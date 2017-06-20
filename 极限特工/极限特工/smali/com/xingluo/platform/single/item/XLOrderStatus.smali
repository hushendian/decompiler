.class public final enum Lcom/xingluo/platform/single/item/XLOrderStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/item/XLOrderStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/item/XLOrderStatus;

.field public static final enum b:Lcom/xingluo/platform/single/item/XLOrderStatus;

.field public static final enum c:Lcom/xingluo/platform/single/item/XLOrderStatus;

.field public static final enum d:Lcom/xingluo/platform/single/item/XLOrderStatus;

.field public static final enum e:Lcom/xingluo/platform/single/item/XLOrderStatus;

.field private static final synthetic f:[Lcom/xingluo/platform/single/item/XLOrderStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    const-string v1, "XL_ORDER_STATUS_UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/xingluo/platform/single/item/XLOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->a:Lcom/xingluo/platform/single/item/XLOrderStatus;

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    const-string v1, "XL_ORDER_STATUS_DEALING"

    invoke-direct {v0, v1, v4, v4}, Lcom/xingluo/platform/single/item/XLOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->b:Lcom/xingluo/platform/single/item/XLOrderStatus;

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    const-string v1, "XL_ORDER_STATUS_SUCCESS"

    invoke-direct {v0, v1, v5, v6}, Lcom/xingluo/platform/single/item/XLOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    const-string v1, "XL_ORDER_STATUS_FAIL"

    invoke-direct {v0, v1, v6, v5}, Lcom/xingluo/platform/single/item/XLOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    new-instance v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    const-string v1, "XL_ORDER_STATUS_SMS_SEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/xingluo/platform/single/item/XLOrderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->e:Lcom/xingluo/platform/single/item/XLOrderStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xingluo/platform/single/item/XLOrderStatus;

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->a:Lcom/xingluo/platform/single/item/XLOrderStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->b:Lcom/xingluo/platform/single/item/XLOrderStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->c:Lcom/xingluo/platform/single/item/XLOrderStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->d:Lcom/xingluo/platform/single/item/XLOrderStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/single/item/XLOrderStatus;->e:Lcom/xingluo/platform/single/item/XLOrderStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->f:[Lcom/xingluo/platform/single/item/XLOrderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xingluo/platform/single/item/XLOrderStatus;->value:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/item/XLOrderStatus;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/XLOrderStatus;

    return-object v0
.end method

.method public static b()[Lcom/xingluo/platform/single/item/XLOrderStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/item/XLOrderStatus;->f:[Lcom/xingluo/platform/single/item/XLOrderStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/item/XLOrderStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/item/XLOrderStatus;->value:I

    return v0
.end method
