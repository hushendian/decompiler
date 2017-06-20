.class public abstract Lcom/ms/payment/MoshiPaymentListener;
.super Ljava/lang/Object;
.source "MoshiPaymentListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBuyProductFailed(Ljava/lang/String;I)V
.end method

.method public abstract onBuyProductOK(Ljava/lang/String;I)V
.end method
