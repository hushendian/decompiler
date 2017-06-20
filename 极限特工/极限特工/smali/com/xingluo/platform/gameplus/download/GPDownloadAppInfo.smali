.class public Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private currentSize:Ljava/lang/String;

.field private downloadDate:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private pacakgeName:Ljava/lang/String;

.field private totleSize:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->gameId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->gameName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->pacakgeName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->downloadUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->localPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->totleSize:Ljava/lang/String;

    iput-object p7, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->currentSize:Ljava/lang/String;

    iput-object p8, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->version:Ljava/lang/String;

    iput p9, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->versionCode:I

    iput-object p10, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->iconUrl:Ljava/lang/String;

    iput-object p11, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->downloadDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->versionCode:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->gameId:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->gameName:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->pacakgeName:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->pacakgeName:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->localPath:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->totleSize:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->totleSize:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->currentSize:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->currentSize:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->versionCode:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->downloadDate:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadAppInfo;->downloadDate:Ljava/lang/String;

    return-object v0
.end method
