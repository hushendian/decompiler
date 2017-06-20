.class final Lcom/yuelan/codelib/download/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yuelan/codelib/download/DownLoadService;

.field private final synthetic b:Lcom/yuelan/codelib/download/DownloadInfo;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/yuelan/codelib/download/DownLoadService;Lcom/yuelan/codelib/download/DownloadInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/yuelan/codelib/download/d;->a:Lcom/yuelan/codelib/download/DownLoadService;

    iput-object p2, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    const/4 v0, 0x2

    iput v0, p0, Lcom/yuelan/codelib/download/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/yuelan/codelib/download/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/yuelan/codelib/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/yuelan/codelib/download/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/yuelan/codelib/download/DownloadInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/yuelan/codelib/download/d;->a:Lcom/yuelan/codelib/download/DownLoadService;

    iget-object v4, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yuelan/codelib/download/d;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v5}, Lcom/yuelan/codelib/download/DownLoadService;->c(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v5

    iget-object v6, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v6}, Lcom/yuelan/codelib/download/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v7}, Lcom/yuelan/codelib/download/DownloadInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/yuelan/codelib/download/DownloadInfo;->getDowmLoadType()I

    move-result v8

    iget-object v9, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v9}, Lcom/yuelan/codelib/download/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v10}, Lcom/yuelan/codelib/download/DownloadInfo;->getPopupType()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v11}, Lcom/yuelan/codelib/download/DownloadInfo;->getPopupText()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v12}, Lcom/yuelan/codelib/download/DownloadInfo;->getApkpathtype()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/yuelan/codelib/download/DownloadFileUtil;->baseDownload(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lcom/yuelan/codelib/download/DownloadDB;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/yuelan/codelib/download/d;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "update download_info set state = ?,jindu = ? where gameid = ?"

    iget-object v1, p0, Lcom/yuelan/codelib/download/d;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v1}, Lcom/yuelan/codelib/download/DownLoadService;->c(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "100"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/yuelan/codelib/download/DownloadDB;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/yuelan/codelib/download/d;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v0}, Lcom/yuelan/codelib/download/DownLoadService;->d(Lcom/yuelan/codelib/download/DownLoadService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    mul-int/lit8 v0, v0, 0x64

    const-string v1, "update download_info set state = ?,jindu = ? where gameid = ?"

    iget-object v2, p0, Lcom/yuelan/codelib/download/d;->a:Lcom/yuelan/codelib/download/DownLoadService;

    invoke-static {v2}, Lcom/yuelan/codelib/download/DownLoadService;->c(Lcom/yuelan/codelib/download/DownLoadService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/yuelan/codelib/download/d;->b:Lcom/yuelan/codelib/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/yuelan/codelib/download/DownloadInfo;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/yuelan/codelib/download/DownloadDB;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
