.class public Lcom/xingluo/platform/single/net/NetMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;
    }
.end annotation


# instance fields
.field private a:Lcom/xingluo/platform/single/net/a/a;

.field private b:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

.field private c:J

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->h:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->c:J

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->b:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/net/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->a:Lcom/xingluo/platform/single/net/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/xingluo/platform/single/net/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->a:Lcom/xingluo/platform/single/net/a/a;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->e:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->d:J

    return-void
.end method

.method public c()Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->b:Lcom/xingluo/platform/single/net/NetMessage$NetMessageType;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/net/NetMessage;->g:I

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->d:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/net/NetMessage;->g:I

    return v0
.end method
