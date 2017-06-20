.class public Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private autoinstall:I

.field private bgurl:Ljava/lang/String;

.field private dlurl:Ljava/lang/String;

.field private gicon:Ljava/lang/String;

.field private gid:Ljava/lang/String;

.field private gname:Ljava/lang/String;

.field private iscellularable:I

.field private pkgname:Ljava/lang/String;

.field private pkgsize:Ljava/lang/String;

.field private promotion:Ljava/lang/String;

.field private pushbg:Ljava/lang/String;

.field private pushicon:Ljava/lang/String;

.field private replace_other:I

.field private version:Ljava/lang/String;

.field private versioncode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pkgname:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pkgsize:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gicon:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->dlurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->version:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->versioncode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->promotion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->bgurl:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->autoinstall:I

    iput v1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->replace_other:I

    iput v1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->iscellularable:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pushicon:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pushbg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->autoinstall:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gname:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gid:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->replace_other:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gid:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pkgname:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->iscellularable:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pkgsize:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pkgsize:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pkgname:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gicon:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->gicon:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->dlurl:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->dlurl:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->versioncode:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->versioncode:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->promotion:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->promotion:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->bgurl:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->bgurl:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->autoinstall:I

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pushicon:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->replace_other:I

    return v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pushbg:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->iscellularable:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pushicon:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/net/response/GamePlusGameInfo;->pushbg:Ljava/lang/String;

    return-object v0
.end method
