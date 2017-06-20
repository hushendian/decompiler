.class public Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7996ad93bf209ff9L


# instance fields
.field private allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private flagShowYeeCard:Z

.field private payChannel:Ljava/lang/String;

.field private smsAmount:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

.field private viewType:Lcom/xingluo/platform/single/pay/ViewType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->payChannel:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->viewType:Lcom/xingluo/platform/single/pay/ViewType;

    return-void
.end method


# virtual methods
.method public a()Lcom/xingluo/platform/single/pay/ViewType;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->viewType:Lcom/xingluo/platform/single/pay/ViewType;

    return-object v0
.end method

.method public a(Lcom/xingluo/platform/single/pay/ViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->viewType:Lcom/xingluo/platform/single/pay/ViewType;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->smsAmount:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->payChannel:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->flagShowYeeCard:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->smsAmount:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->flagShowYeeCard:Z

    return v0
.end method

.method public e()Lcom/xingluo/platform/single/pay/data/XLAllParams;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->allParams:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    return-object v0
.end method
