.class public Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D

.field private d:Ljava/lang/String;

.field private e:D

.field private f:Ljava/lang/String;

.field private g:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b:Ljava/lang/String;

    .line 92
    iput-wide v1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c:D

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d:Ljava/lang/String;

    .line 94
    iput-wide v1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e:D

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b:Ljava/lang/String;

    .line 108
    iput-wide p3, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c:D

    .line 109
    iput-object p5, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d:Ljava/lang/String;

    .line 110
    iput-wide p6, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e:D

    .line 111
    iput-object p8, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f:Ljava/lang/String;

    .line 112
    iput-object p9, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->g:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    .line 113
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->c:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->e:D

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->g:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    return-object v0
.end method
