.class public Lcom/xingluo/platform/single/item/XLOrderInfoData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private xlOrderId:Ljava/lang/String;

.field private xlOrderPayChannel:Lcom/xingluo/platform/single/util/PayOrderChannel;

.field private xlOrderPrice:Ljava/lang/String;

.field private xlOrderProductId:Ljava/lang/String;

.field private xlOrderStatus:Lcom/xingluo/platform/single/item/XLOrderStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLOrderStatus;Lcom/xingluo/platform/single/util/PayOrderChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderProductId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderPrice:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderStatus:Lcom/xingluo/platform/single/item/XLOrderStatus;

    iput-object p5, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderPayChannel:Lcom/xingluo/platform/single/util/PayOrderChannel;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xingluo/platform/single/item/XLOrderStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderStatus:Lcom/xingluo/platform/single/item/XLOrderStatus;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/util/PayOrderChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderPayChannel:Lcom/xingluo/platform/single/util/PayOrderChannel;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderId:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderProductId:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderProductId:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderPrice:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderPrice:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/xingluo/platform/single/item/XLOrderStatus;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderStatus:Lcom/xingluo/platform/single/item/XLOrderStatus;

    return-object v0
.end method

.method public e()Lcom/xingluo/platform/single/util/PayOrderChannel;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/item/XLOrderInfoData;->xlOrderPayChannel:Lcom/xingluo/platform/single/util/PayOrderChannel;

    return-object v0
.end method
