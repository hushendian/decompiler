.class public Lcom/yuelan/codelib/download/DownloadInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkpathtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getDowmLoadType()I
    .locals 1

    iget v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->i:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getJindu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPopupType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->c:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->f:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/codelib/download/DownloadInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setApkpathtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setDowmLoadType(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->i:I

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setJindu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setPopupText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public setPopupType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->c:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->f:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/codelib/download/DownloadInfo;->e:Ljava/lang/String;

    return-void
.end method
