.class public Lcom/tendcloud/tenddata/game/cd;
.super Ljava/util/Properties;
.source "td"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cd$b;,
        Lcom/tendcloud/tenddata/game/cd$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cd;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/cd;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cd;->e:Ljava/util/zip/CRC32;

    .line 26
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/game/cd;->writeData([B)V

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/game/cd;-><init>(Ljava/lang/String;[B)V

    .line 22
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/game/cd;)I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/cd;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public a(Ljava/lang/String;[B)[B
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/game/cd;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/cd;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cd;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/cd;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cd;->b:[B

    return-object v0
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/tendcloud/tenddata/game/cd;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/cd;->a(Lcom/tendcloud/tenddata/game/cd;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/tendcloud/tenddata/game/cd;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/tendcloud/tenddata/game/cd;->d:I

    return v0
.end method

.method public writeData([B)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cd;->b:[B

    .line 71
    array-length v0, p1

    iput v0, p0, Lcom/tendcloud/tenddata/game/cd;->d:I

    .line 72
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cd;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 73
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cd;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 74
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cd;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tendcloud/tenddata/game/cd;->c:I

    .line 75
    return-void
.end method
