.class public Lcom/tendcloud/tenddata/game/cq;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "type"

.field public static final c:Ljava/lang/String; = "deviceId"

.field public static final d:Ljava/lang/String; = "runtimeConfig"

.field public static final e:Ljava/lang/String; = "hardwareConfig"

.field public static final f:Ljava/lang/String; = "softwareConfig"

.field public static g:Lcom/tendcloud/tenddata/game/cp; = null

.field public static final h:Ljava/lang/String; = "tags"


# instance fields
.field i:Lcom/tendcloud/tenddata/game/cr;

.field j:Lcom/tendcloud/tenddata/game/co;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 15
    new-instance v0, Lcom/tendcloud/tenddata/game/cr;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cr;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->i:Lcom/tendcloud/tenddata/game/cr;

    .line 16
    new-instance v0, Lcom/tendcloud/tenddata/game/co;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/co;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Lcom/tendcloud/tenddata/game/co;

    .line 20
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cq;->d()V

    .line 21
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "type"

    const-string v1, "mobile"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lcom/tendcloud/tenddata/game/cp;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cp;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->g:Lcom/tendcloud/tenddata/game/cp;

    .line 26
    const-string v0, "deviceId"

    sget-object v1, Lcom/tendcloud/tenddata/game/cq;->g:Lcom/tendcloud/tenddata/game/cp;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cp;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lcom/tendcloud/tenddata/game/cs;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cs;-><init>()V

    .line 29
    const-string v1, "runtimeConfig"

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cs;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string v0, "hardwareConfig"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->j:Lcom/tendcloud/tenddata/game/co;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/co;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v0, "softwareConfig"

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cq;->i:Lcom/tendcloud/tenddata/game/cr;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cr;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public b()Lcom/tendcloud/tenddata/game/cr;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->i:Lcom/tendcloud/tenddata/game/cr;

    return-object v0
.end method

.method public c()Lcom/tendcloud/tenddata/game/co;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Lcom/tendcloud/tenddata/game/co;

    return-object v0
.end method
