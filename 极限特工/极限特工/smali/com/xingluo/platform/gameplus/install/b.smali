.class Lcom/xingluo/platform/gameplus/install/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xingluo/platform/gameplus/install/GPInstallPacket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xingluo/platform/gameplus/install/GPInstallPacket;
    .locals 2

    new-instance v0, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->a(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->b(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->c(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/gameplus/install/GPInstallPacket;->d(Lcom/xingluo/platform/gameplus/install/GPInstallPacket;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/xingluo/platform/gameplus/install/GPInstallPacket;
    .locals 1

    new-array v0, p1, [Lcom/xingluo/platform/gameplus/install/GPInstallPacket;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/install/b;->a(Landroid/os/Parcel;)Lcom/xingluo/platform/gameplus/install/GPInstallPacket;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/install/b;->a(I)[Lcom/xingluo/platform/gameplus/install/GPInstallPacket;

    move-result-object v0

    return-object v0
.end method
