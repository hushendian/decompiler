.class public Lcom/tendcloud/tenddata/game/n;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static final e:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field private final f:Lcom/tendcloud/tenddata/game/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/tendcloud/tenddata/game/o;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/o;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/n;->e:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/tendcloud/tenddata/game/n;->d:I

    .line 50
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/n;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/z$a;->a(I)Lcom/tendcloud/tenddata/game/z$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/n;->f:Lcom/tendcloud/tenddata/game/z$a;

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/n;->f:Lcom/tendcloud/tenddata/game/z$a;

    const-string v2, "cpuacct"

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/z$a;->b(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/z$b;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/n;->f:Lcom/tendcloud/tenddata/game/z$a;

    const-string v3, "cpu"

    invoke-virtual {v2, v3}, Lcom/tendcloud/tenddata/game/z$a;->b(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/z$b;

    move-result-object v2

    .line 56
    iget-object v2, v2, Lcom/tendcloud/tenddata/game/z$b;->c:Ljava/lang/String;

    const-string v3, "bg_non_interactive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/n;->a:Z

    .line 57
    iget-object v0, v1, Lcom/tendcloud/tenddata/game/z$b;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "uid_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/n;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/n;->d()Lcom/tendcloud/tenddata/game/z$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/n;->d()Lcom/tendcloud/tenddata/game/z$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/z$d;->a()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/n;->b:I

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/n;->d:I

    .line 95
    const-class v0, Lcom/tendcloud/tenddata/game/z$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/z$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/n;->f:Lcom/tendcloud/tenddata/game/z$a;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/game/n;->a:Z

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 131
    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/z$c;->a(I)Lcom/tendcloud/tenddata/game/z$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/z$c;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v0, ""

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c()Lcom/tendcloud/tenddata/game/z$a;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/n;->f:Lcom/tendcloud/tenddata/game/z$a;

    return-object v0
.end method

.method public d()Lcom/tendcloud/tenddata/game/z$d;
    .locals 1

    .prologue
    .line 140
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/n;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/z$d;->a(I)Lcom/tendcloud/tenddata/game/z$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/tendcloud/tenddata/game/z$c;
    .locals 1

    .prologue
    .line 147
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/n;->d:I

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/z$c;->a(I)Lcom/tendcloud/tenddata/game/z$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method
