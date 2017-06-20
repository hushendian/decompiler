.class public Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoinstall:I

.field private bgurl:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private iscellularable:I

.field private localPath:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private promotion:Ljava/lang/String;

.field private pushbg:Ljava/lang/String;

.field private pushicon:Ljava/lang/String;

.field private replace_other:I

.field private saveName:Ljava/lang/String;

.field private size:J

.field private version:Ljava/lang/String;

.field private versionInt:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->versionInt:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->size:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->autoinstall:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->gameId:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->replace_other:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->iscellularable:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->gameName:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->saveName:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->saveName:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->localPath:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->versionInt:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->promotion:Ljava/lang/String;

    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->size:J

    return-wide v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->bgurl:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->promotion:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->pushicon:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->bgurl:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->pushbg:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->autoinstall:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->replace_other:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->iscellularable:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->pushicon:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPDownloadedAppInfo;->pushbg:Ljava/lang/String;

    return-object v0
.end method
