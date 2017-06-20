.class final Lcom/tendcloud/tenddata/game/o;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/game/n;
    .locals 1

    .prologue
    .line 104
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/n;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/n;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[Lcom/tendcloud/tenddata/game/n;
    .locals 1

    .prologue
    .line 113
    :try_start_0
    new-array v0, p1, [Lcom/tendcloud/tenddata/game/n;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/o;->a(Landroid/os/Parcel;)Lcom/tendcloud/tenddata/game/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/o;->a(I)[Lcom/tendcloud/tenddata/game/n;

    move-result-object v0

    return-object v0
.end method
