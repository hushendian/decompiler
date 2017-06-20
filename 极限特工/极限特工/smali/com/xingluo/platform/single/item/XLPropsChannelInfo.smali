.class public Lcom/xingluo/platform/single/item/XLPropsChannelInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channel:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private dest:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private propsId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->propsId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->price:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->operator:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->channel:Ljava/lang/String;

    iput-object p5, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->code:Ljava/lang/String;

    iput-object p6, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->dest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->group:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->group:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->propsId:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->propsId:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->price:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->channel:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->code:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->dest:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->dest:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->operator:Ljava/lang/String;

    return-void
.end method
