.class Lcom/xingluo/platform/gameplus/mode/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xingluo/platform/gameplus/mode/AidlListener;",
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
.method public a(Landroid/os/Parcel;)Lcom/xingluo/platform/gameplus/mode/AidlListener;
    .locals 3

    new-instance v0, Lcom/xingluo/platform/gameplus/mode/AidlListener;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xingluo/platform/gameplus/service/d$a;->a(Landroid/os/IBinder;)Lcom/xingluo/platform/gameplus/service/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/gameplus/mode/AidlListener;-><init>(Ljava/lang/String;Lcom/xingluo/platform/gameplus/service/d;)V

    return-object v0
.end method

.method public a(I)[Lcom/xingluo/platform/gameplus/mode/AidlListener;
    .locals 1

    new-array v0, p1, [Lcom/xingluo/platform/gameplus/mode/AidlListener;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/mode/a;->a(Landroid/os/Parcel;)Lcom/xingluo/platform/gameplus/mode/AidlListener;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/gameplus/mode/a;->a(I)[Lcom/xingluo/platform/gameplus/mode/AidlListener;

    move-result-object v0

    return-object v0
.end method
