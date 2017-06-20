.class public final enum Lcom/xingluo/platform/single/pay/ViewType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/pay/ViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum b:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum c:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum d:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum e:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum f:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum g:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum h:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum i:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum j:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum k:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum l:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum m:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum n:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum o:Lcom/xingluo/platform/single/pay/ViewType;

.field public static final enum p:Lcom/xingluo/platform/single/pay/ViewType;

.field private static final synthetic q:[Lcom/xingluo/platform/single/pay/ViewType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_DEFAULTVIEW"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->a:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayMainBaseView"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->b:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayMainSMSView"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v6, v2}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayWoShopView"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v7, v2}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->d:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayWoReadView"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v8, v2}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->e:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayMainOtherView"

    const/4 v2, 0x5

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayMainPrepaidCardView"

    const/4 v2, 0x6

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->g:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayMainGameCardView"

    const/4 v2, 0x7

    const/16 v3, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->h:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayQuickpayView"

    const/16 v2, 0x8

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->i:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayQuickpayDefaultView"

    const/16 v2, 0x9

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->j:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayCMMMView"

    const/16 v2, 0xa

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->k:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayCMGBView"

    const/16 v2, 0xb

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->l:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayCTEGAMEView"

    const/16 v2, 0xc

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayWoStoreSDKView"

    const/16 v2, 0xd

    const/16 v3, 0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PayLangLangView"

    const/16 v2, 0xe

    const/16 v3, 0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->o:Lcom/xingluo/platform/single/pay/ViewType;

    new-instance v0, Lcom/xingluo/platform/single/pay/ViewType;

    const-string v1, "VT_PaytianceCMView"

    const/16 v2, 0xf

    const/16 v3, 0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->p:Lcom/xingluo/platform/single/pay/ViewType;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/xingluo/platform/single/pay/ViewType;

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->a:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->b:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->d:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->e:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->g:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->h:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->i:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->j:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->k:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->l:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->o:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->p:Lcom/xingluo/platform/single/pay/ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xingluo/platform/single/pay/ViewType;->q:[Lcom/xingluo/platform/single/pay/ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xingluo/platform/single/pay/ViewType;->value:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/pay/ViewType;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/pay/ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/ViewType;

    return-object v0
.end method

.method public static b()[Lcom/xingluo/platform/single/pay/ViewType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->q:[Lcom/xingluo/platform/single/pay/ViewType;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/pay/ViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/pay/ViewType;->value:I

    return v0
.end method
