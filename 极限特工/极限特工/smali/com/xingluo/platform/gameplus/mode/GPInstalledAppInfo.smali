.class public Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private installedDate:J

.field private packageName:Ljava/lang/String;

.field private size:J

.field private version:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->packageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->downloadUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->versionCode:I

    iput-wide v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->installedDate:J

    iput-wide v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->size:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->downloadUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->version:Ljava/lang/String;

    iput p6, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->versionCode:I

    iput-wide p7, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->installedDate:J

    iput-wide p9, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->size:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->versionCode:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->installedDate:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameId:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->size:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameName:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->versionCode:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->installedDate:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->size:J

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->size:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPInstalledAppInfo [gameId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->installedDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xingluo/platform/gameplus/mode/GPInstalledAppInfo;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
