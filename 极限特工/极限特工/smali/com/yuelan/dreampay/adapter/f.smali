.class final Lcom/yuelan/dreampay/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    iput-object p2, p0, Lcom/yuelan/dreampay/adapter/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/adapter/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yuelan/dreampay/adapter/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yuelan/dreampay/adapter/f;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yuelan/dreampay/adapter/f;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/yuelan/dreampay/adapter/f;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/adapter/f;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->hasNetWork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yuelan/dreampay/adapter/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yuelan/dreampay/adapter/f;->d:Ljava/lang/String;

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

    iget-object v7, p0, Lcom/yuelan/dreampay/adapter/f;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/yuelan/dreampay/adapter/f;->f:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/yuelan/dreampay/adapter/f;->g:Ljava/lang/String;

    const-string v11, "2"

    const-string v12, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v13, "1"

    invoke-static/range {v0 .. v13}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v9, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v8

    const/4 v10, 0x1

    const-string v11, "\u5f00\u542fWIFI"

    const-string v12, "\u7ee7\u7eed\u4e0b\u8f7d"

    const-string v13, "\u5f53\u524d\u4f7f\u7528\u7684\u79fb\u52a8\u7f51\u7edc\u4f1a\u4ea7\u751f\u6570\u636e\u4fe1\u606f\u8d39\u5efa\n\u8bae\u60a8\u5f00\u542fWIFI\u540e\u4e0b\u8f7d\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const/4 v14, 0x0

    new-instance v0, Lcom/yuelan/dreampay/adapter/g;

    iget-object v2, p0, Lcom/yuelan/dreampay/adapter/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yuelan/dreampay/adapter/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/yuelan/dreampay/adapter/f;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/yuelan/dreampay/adapter/f;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/yuelan/dreampay/adapter/f;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/yuelan/dreampay/adapter/f;->g:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/adapter/g;-><init>(Lcom/yuelan/dreampay/adapter/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    move-object v2, v8

    move v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v9}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/f;->a:Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    invoke-static {v1}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    const-string v4, "\u786e\u5b9a"

    const-string v5, "\u68c0\u6d4b\u5230\u60a8\u672a\u5f00\u542f\u7f51\u7edc\n\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u91cd\u65b0\u5c1d\u8bd5"

    const/4 v6, 0x0

    new-instance v7, Lcom/yuelan/dreampay/adapter/h;

    invoke-direct {v7, p0}, Lcom/yuelan/dreampay/adapter/h;-><init>(Lcom/yuelan/dreampay/adapter/f;)V

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_0
.end method
