.class public final enum Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field public static final enum b:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field public static final enum c:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field public static final enum d:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field public static final enum e:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field public static final enum f:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field private static final synthetic g:[Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;


# instance fields
.field private final factory:Lcom/xingluo/platform/single/pay/listener/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const-string v1, "ET_GOCMMMView"

    new-instance v2, Lcom/xingluo/platform/single/sdk/control/a;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sdk/control/a;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    new-instance v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const-string v1, "ET_GOCMGBView"

    new-instance v2, Lcom/xingluo/platform/single/sdk/control/b;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sdk/control/b;-><init>()V

    invoke-direct {v0, v1, v5, v2}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->b:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    new-instance v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const-string v1, "ET_GOCTEGAMEView"

    new-instance v2, Lcom/xingluo/platform/single/sdk/control/c;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sdk/control/c;-><init>()V

    invoke-direct {v0, v1, v6, v2}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->c:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    new-instance v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const-string v1, "ET_GOWoStoreSDKView"

    new-instance v2, Lcom/xingluo/platform/single/sdk/control/d;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sdk/control/d;-><init>()V

    invoke-direct {v0, v1, v7, v2}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->d:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    new-instance v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const-string v1, "ET_GOWoShopView"

    new-instance v2, Lcom/xingluo/platform/single/sdk/control/e;

    invoke-direct {v2}, Lcom/xingluo/platform/single/sdk/control/e;-><init>()V

    invoke-direct {v0, v1, v8, v2}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->e:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    new-instance v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const-string v1, "ET_ConfirmSendMDO"

    const/4 v2, 0x5

    new-instance v3, Lcom/xingluo/platform/single/sdk/control/f;

    invoke-direct {v3}, Lcom/xingluo/platform/single/sdk/control/f;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->f:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    sget-object v1, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->b:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->c:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->d:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->e:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->f:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->g:[Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->factory:Lcom/xingluo/platform/single/pay/listener/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    return-object v0
.end method

.method public static b()[Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->g:[Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Lcom/xingluo/platform/single/pay/listener/b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->factory:Lcom/xingluo/platform/single/pay/listener/b;

    return-object v0
.end method
