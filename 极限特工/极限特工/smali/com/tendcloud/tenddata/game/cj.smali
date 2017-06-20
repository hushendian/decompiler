.class public Lcom/tendcloud/tenddata/game/cj;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# static fields
.field private static a:Ljava/util/HashMap;

.field private static volatile c:Lcom/tendcloud/tenddata/game/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cj;->c:Lcom/tendcloud/tenddata/game/cj;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 26
    const-string v0, "displayName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/p;->a()Lcom/tendcloud/tenddata/game/p;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/p;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v0, "globalId"

    invoke-static {}, Lcom/tendcloud/tenddata/game/p;->a()Lcom/tendcloud/tenddata/game/p;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const-string v0, "versionName"

    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    const-string v0, "versionCode"

    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v0, "installTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/p;->a()Lcom/tendcloud/tenddata/game/p;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/p;->d(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const-string v0, "updateTime"

    invoke-static {}, Lcom/tendcloud/tenddata/game/p;->a()Lcom/tendcloud/tenddata/game/p;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/p;->e(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 99
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 101
    const-string v1, "X.509"

    .line 102
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 103
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 104
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 105
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lcom/tendcloud/tenddata/game/cj;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->c:Lcom/tendcloud/tenddata/game/cj;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/tendcloud/tenddata/game/cc;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->c:Lcom/tendcloud/tenddata/game/cj;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cj;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cj;->c:Lcom/tendcloud/tenddata/game/cj;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->c:Lcom/tendcloud/tenddata/game/cj;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/a;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/a;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "channel"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    .prologue
    .line 58
    if-eqz p1, :cond_1

    .line 60
    :try_start_0
    const-string v1, "appKey"

    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :goto_1
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/cj;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "appKey"

    sget-object v1, Lcom/tendcloud/tenddata/game/cj;->a:Ljava/util/HashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const-string v0, "uniqueId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method
