.class public Lcom/xingluo/platform/gameplus/install/GPInstallPacket;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xingluo/platform/gameplus/install/GPInstallPacket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apkPath:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private gamePkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xingluo/platform/gameplus/install/b;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/install/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->apkPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gamePkg:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->apkPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameId:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameName:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gamePkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->apkPath:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameId:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameName:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gamePkg:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gamePkg:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPInstallPacket [apkPath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->apkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gamePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gamePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->apkPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gameName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->gamePkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
