.class public Lcom/xingluo/single/update/AppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xingluo/single/update/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downLoadUrl:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private isNewVersion:Z

.field private isPatch:Z

.field private isReboot:Z

.field private packageName:Ljava/lang/String;

.field private updateContent:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xingluo/single/update/a;

    invoke-direct {v0}, Lcom/xingluo/single/update/a;-><init>()V

    sput-object v0, Lcom/xingluo/single/update/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isNewVersion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isReboot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/xingluo/single/update/AppInfo;->isPatch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xingluo/single/update/AppInfo;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->downLoadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->updateContent:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "isNewVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isNewVersion:Z

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isNewVersion:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "isReboot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isReboot:Z

    const-string v0, "isPatch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isPatch:Z

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->packageName:Ljava/lang/String;

    const-string v0, "versionCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xingluo/single/update/AppInfo;->versionCode:I

    const-string v0, "versionName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->versionName:Ljava/lang/String;

    const-string v0, "downLoadUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->downLoadUrl:Ljava/lang/String;

    const-string v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->iconUrl:Ljava/lang/String;

    const-string v0, "updateContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/single/update/AppInfo;->updateContent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownLoadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->downLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->updateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/xingluo/single/update/AppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isNewVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isNewVersion:Z

    return v0
.end method

.method public isPatch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isPatch:Z

    return v0
.end method

.method public isReboot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isReboot:Z

    return v0
.end method

.method public setDownLoadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/AppInfo;->downLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/AppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setNewVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/single/update/AppInfo;->isNewVersion:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPatch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/single/update/AppInfo;->isPatch:Z

    return-void
.end method

.method public setReboot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/single/update/AppInfo;->isReboot:Z

    return-void
.end method

.method public setUpdateContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/AppInfo;->updateContent:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/single/update/AppInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/single/update/AppInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isNewVersion:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isReboot:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/xingluo/single/update/AppInfo;->isPatch:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/single/update/AppInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->downLoadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/single/update/AppInfo;->updateContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
