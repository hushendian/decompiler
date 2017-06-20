.class public Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2bebf63ceee693d9L


# instance fields
.field private xlOrder:Lcom/xingluo/platform/single/order/Order;

.field private xlPayChannelViewValue:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->xlPayChannelViewValue:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    return-object v0
.end method

.method public a(Lcom/xingluo/platform/single/order/Order;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->xlOrder:Lcom/xingluo/platform/single/order/Order;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->xlPayChannelViewValue:Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    return-void
.end method

.method public b()Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->xlOrder:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method
