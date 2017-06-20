.class public Lcom/ms/payment/MoshiPaymentNativeListener;
.super Lcom/ms/payment/MoshiPaymentListener;
.source "MoshiPaymentNativeListener.java"


# static fields
.field public static final PAY_RESULT_FAILED:I = 0x0

.field public static final PAY_RESULT_SUCCESS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/ms/payment/MoshiPaymentListener;-><init>()V

    return-void
.end method

.method public static native PayCbNative(I)V
.end method


# virtual methods
.method public onBuyProductFailed(Ljava/lang/String;I)V
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt"    # I

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    .line 15
    return-void
.end method

.method public onBuyProductOK(Ljava/lang/String;I)V
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramInt"    # I

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "success,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/cocos2dx/lib/Cocos2dxLuaJavaBridge;->callLuaFunctionWithString(ILjava/lang/String;)I

    .line 20
    return-void
.end method
