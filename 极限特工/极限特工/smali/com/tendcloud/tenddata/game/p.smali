.class public Lcom/tendcloud/tenddata/game/p;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/p;


# instance fields
.field private b:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/p;->a:Lcom/tendcloud/tenddata/game/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    .line 19
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/p;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/tendcloud/tenddata/game/p;->a:Lcom/tendcloud/tenddata/game/p;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/tendcloud/tenddata/game/p;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/p;->a:Lcom/tendcloud/tenddata/game/p;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tendcloud/tenddata/game/p;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/p;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/p;->a:Lcom/tendcloud/tenddata/game/p;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/p;->a:Lcom/tendcloud/tenddata/game/p;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized i(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 44
    :goto_0
    monitor-exit p0

    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 62
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    const-string v0, "unknown"

    .line 89
    :goto_0
    return-object v0

    .line 82
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const-string v0, "unknown"

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 89
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 94
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-wide v0

    .line 98
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 114
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-wide v0

    .line 118
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 132
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-wide v0

    .line 136
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 138
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 147
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/p;->b:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 155
    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 158
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-object v0

    .line 177
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/p;->i(Landroid/content/Context;)Z

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method
