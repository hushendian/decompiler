.class public Lcom/ms/payment/MoshiPayment;
.super Ljava/lang/Object;
.source "MoshiPayment.java"


# static fields
.field private static m_sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPayInfoData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v3, 0x0

    .line 20
    .local v3, "localByteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    sget-object v7, Lcom/ms/payment/MoshiPayment;->m_sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 21
    .local v6, "localInputStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 22
    .local v0, "arrayOfByte":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "i":I
    array-length v2, v0

    .line 25
    .local v2, "j":I
    const/4 v3, 0x0

    .line 26
    if-lt v1, v2, :cond_0

    .line 28
    array-length v7, v0

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object v4, v3

    .line 39
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "localByteBuffer":Ljava/nio/ByteBuffer;
    .end local v6    # "localInputStream":Ljava/io/InputStream;
    .local v4, "localByteBuffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v4

    .line 32
    .end local v4    # "localByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v0    # "arrayOfByte":[B
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "localByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "localInputStream":Ljava/io/InputStream;
    :cond_0
    aget-byte v7, v0, v1

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    aget-byte v8, v0, v1

    and-int/lit16 v8, v8, 0xf0

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    add-int/lit8 v1, v1, 0x1

    .end local v0    # "arrayOfByte":[B
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v6    # "localInputStream":Ljava/io/InputStream;
    :goto_1
    move-object v4, v3

    .line 39
    .end local v3    # "localByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "localByteBuffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 35
    .end local v4    # "localByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v3    # "localByteBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    .line 37
    .local v5, "localIOException":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPurchaseListener()Lcom/ms/payment/MoshiPaymentListener;
    .locals 2

    .prologue
    .line 44
    const-string v0, "e"

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaa getPurchaseListener "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/ms/payment/MoshiPaymentListener;)V
    .locals 0
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramMoshiPaymentListener"    # Lcom/ms/payment/MoshiPaymentListener;

    .prologue
    .line 50
    sput-object p0, Lcom/ms/payment/MoshiPayment;->m_sContext:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/ms/payment/MoshiPayment;->payInfoInit()V

    .line 53
    return-void
.end method

.method public static onMissionBegin(Ljava/lang/String;)V
    .locals 2
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "e"

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaa onMissionBegin "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static onMissionCompleted(Ljava/lang/String;)V
    .locals 2
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "e"

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaa onMissionCompleted "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public static onMissionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "paramString1"    # Ljava/lang/String;
    .param p1, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "e"

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaa onMissionFailed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public static onTdonEvent(Ljava/lang/String;)V
    .locals 3
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "e"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aaaaaaaaaaaaaaaaaaaaaaaaaaa onTdonEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "e"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aaaaaaaaaaaaaaaaaaaaaaaaaaa openUrl~~~~~~~~~~~~~~~~ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public static payInfoInit()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "e"

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaa payInfoInit "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public static payItemInfoInit(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p0, "paramNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 90
    const-string v0, "e"

    const-string v1, "aaaaaaaaaaaaaaaaaaaaaaaaaaa payItemInfoInit~! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public static startPay(Ljava/lang/String;I)V
    .locals 3
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "paramInt"    # I

    .prologue
    .line 96
    const-string v0, "e"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aaaaaaaaaaaaaaaaaaaaaaaaaaa startPay~! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "e"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aaaaaaaaaaaaaaaaaaaaaaaaaaa startPay~! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p0, p1}, Lcom/ms/ezqx/Game01;->aaa(Ljava/lang/String;I)V

    .line 101
    return-void
.end method
