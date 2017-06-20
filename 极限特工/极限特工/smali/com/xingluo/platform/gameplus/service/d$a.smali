.class public abstract Lcom/xingluo/platform/gameplus/service/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xingluo/platform/gameplus/service/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/gameplus/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/gameplus/service/d$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.xingluo.platform.gameplus.service.IDownloadListener"

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xingluo.platform.gameplus.service.IDownloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/xingluo/platform/gameplus/service/d$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xingluo/platform/gameplus/service/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.xingluo.platform.gameplus.service.IDownloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xingluo/platform/gameplus/service/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xingluo/platform/gameplus/service/d;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xingluo/platform/gameplus/service/d$a$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/gameplus/service/d$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.xingluo.platform.gameplus.service.IDownloadListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.xingluo.platform.gameplus.service.IDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/xingluo/platform/gameplus/service/d$a;->a(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.xingluo.platform.gameplus.service.IDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/xingluo/platform/gameplus/service/d$a;->b(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v2, "com.xingluo.platform.gameplus.service.IDownloadListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/xingluo/platform/gameplus/service/d$a;->c(Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;)V

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
