.class public final enum Lcom/xingluo/platform/single/third/XLThirdErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/third/XLThirdErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

.field public static final enum b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

.field public static final enum c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

.field public static final enum d:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

.field private static final synthetic e:[Lcom/xingluo/platform/single/third/XLThirdErrorCode;


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    const-string v1, "PAY_SUCCESS"

    const/16 v2, 0xbc2

    const-string v3, "\u9053\u5177\u8d2d\u4e70\u6210\u529f!"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    new-instance v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    const-string v1, "PAY_FAIL"

    const/16 v2, 0xbc3

    const-string v3, "\u9053\u5177\u8d2d\u4e70\u5931\u8d25,\u662f\u5426\u7ee7\u7eed\u8d2d\u4e70\uff1f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    new-instance v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    const-string v1, "PAY_CANCEL"

    const/16 v2, 0xbc4

    const-string v3, "\u53d6\u6d88\u8d2d\u4e70\u64cd\u4f5c,\u662f\u5426\u7ee7\u7eed\u8d2d\u4e70\uff1f"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    new-instance v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    const-string v1, "PAY_EXCEPTION"

    const/16 v2, 0xbc5

    const-string v3, "\u9053\u5177\u8d2d\u4e70\u5f02\u5e38,\u662f\u5426\u7ee7\u7eed\u8d2d\u4e70\uff1f"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/xingluo/platform/single/third/XLThirdErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->d:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    sget-object v1, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->a:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->b:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->c:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->d:Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->e:[Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->errorCode:I

    iput-object p4, p0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/xingluo/platform/single/third/XLThirdErrorCode;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    return-object v0
.end method

.method public static c()[Lcom/xingluo/platform/single/third/XLThirdErrorCode;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->e:[Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/third/XLThirdErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->errorCode:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->errorCode:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/third/XLThirdErrorCode;->errorMsg:Ljava/lang/String;

    return-object v0
.end method
