.class public Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private amount:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private dest:Ljava/lang/String;

.field private limits:I

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->amount:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->code:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->dest:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->limits:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->amount:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->code:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->code:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->dest:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->dest:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->limits:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->channel:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->subject:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->subject:Ljava/lang/String;

    return-object v0
.end method
