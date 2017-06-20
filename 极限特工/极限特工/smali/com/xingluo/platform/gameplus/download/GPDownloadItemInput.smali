.class public Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;
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
            "Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4


# instance fields
.field autoinstall:I

.field bgurl:Ljava/lang/String;

.field current:J

.field displayName:Ljava/lang/String;

.field dlState:I

.field downloadUrl:Ljava/lang/String;

.field gameId:Ljava/lang/String;

.field iconUrl:Ljava/lang/String;

.field iscellularable:I

.field localPath:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field promotion:Ljava/lang/String;

.field pushbg:Ljava/lang/String;

.field pushicon:Ljava/lang/String;

.field replace_other:I

.field saveName:Ljava/lang/String;

.field size:J

.field sizeString:Ljava/lang/String;

.field total:J

.field version:Ljava/lang/String;

.field versionInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xingluo/platform/gameplus/download/c;

    invoke-direct {v0}, Lcom/xingluo/platform/gameplus/download/c;-><init>()V

    sput-object v0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIJJLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iconUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->gameId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->displayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->saveName:Ljava/lang/String;

    iput-object p6, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->localPath:Ljava/lang/String;

    iput p7, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->versionInt:I

    iput-object p8, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->version:Ljava/lang/String;

    iput-object p9, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->downloadUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p10, p11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->sizeString:Ljava/lang/String;

    iput-wide p10, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->size:J

    move/from16 v0, p12

    iput v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->dlState:I

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->current:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->total:J

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->promotion:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->bgurl:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->autoinstall:I

    move/from16 v0, p20

    iput v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->replace_other:I

    move/from16 v0, p21

    iput v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iscellularable:I

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushicon:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushbg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->dlState:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->dlState:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->current:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->promotion:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->current:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->autoinstall:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->total:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->bgurl:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->total:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->replace_other:I

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->size:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->promotion:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iscellularable:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->gameId:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->bgurl:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->versionInt:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->packageName:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->autoinstall:I

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->displayName:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->replace_other:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->saveName:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iscellularable:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->version:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->sizeString:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->localPath:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushicon:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->saveName:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushbg:Ljava/lang/String;

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->versionInt:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->version:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->sizeString:Ljava/lang/String;

    return-object v0
.end method

.method public r()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->size:J

    return-wide v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushicon:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushbg:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->saveName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->localPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->versionInt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->dlState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->current:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->promotion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->bgurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->autoinstall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->replace_other:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->iscellularable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushicon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/gameplus/download/GPDownloadItemInput;->pushbg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
