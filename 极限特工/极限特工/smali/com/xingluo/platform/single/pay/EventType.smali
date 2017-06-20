.class public final enum Lcom/xingluo/platform/single/pay/EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/pay/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum b:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum c:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum d:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum e:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum f:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum g:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum h:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum i:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum j:Lcom/xingluo/platform/single/pay/EventType;

.field public static final enum k:Lcom/xingluo/platform/single/pay/EventType;

.field private static final synthetic l:[Lcom/xingluo/platform/single/pay/EventType;


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

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_DEFAULT"

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->a:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_DoUserLoginAction"

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->b:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_GOLoginView"

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->c:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_BackToLastView"

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->d:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_ControlMainPayView"

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->e:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_TransverseToOther"

    const/4 v2, 0x5

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->f:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_TransverseToSMS"

    const/4 v2, 0x6

    invoke-static {}, Lcom/xingluo/platform/single/pay/a;->a()Lcom/xingluo/platform/single/pay/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->g:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_UploadGameCardPayEnd"

    const/4 v2, 0x7

    invoke-static {}, Lcom/xingluo/platform/single/pay/d;->a()Lcom/xingluo/platform/single/pay/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->h:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_EndYeeCardPay"

    const/16 v2, 0x8

    invoke-static {}, Lcom/xingluo/platform/single/pay/d;->a()Lcom/xingluo/platform/single/pay/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->i:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_EndGameCardPay"

    const/16 v2, 0x9

    invoke-static {}, Lcom/xingluo/platform/single/pay/d;->a()Lcom/xingluo/platform/single/pay/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->j:Lcom/xingluo/platform/single/pay/EventType;

    new-instance v0, Lcom/xingluo/platform/single/pay/EventType;

    const-string v1, "ET_UploadEndPay"

    const/16 v2, 0xa

    invoke-static {}, Lcom/xingluo/platform/single/pay/d;->a()Lcom/xingluo/platform/single/pay/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xingluo/platform/single/pay/EventType;-><init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->k:Lcom/xingluo/platform/single/pay/EventType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/xingluo/platform/single/pay/EventType;

    sget-object v1, Lcom/xingluo/platform/single/pay/EventType;->a:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/single/pay/EventType;->b:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/single/pay/EventType;->c:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/single/pay/EventType;->d:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xingluo/platform/single/pay/EventType;->e:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->f:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->g:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->h:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->i:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->j:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xingluo/platform/single/pay/EventType;->k:Lcom/xingluo/platform/single/pay/EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xingluo/platform/single/pay/EventType;->l:[Lcom/xingluo/platform/single/pay/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/xingluo/platform/single/pay/listener/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xingluo/platform/single/pay/EventType;->factory:Lcom/xingluo/platform/single/pay/listener/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/pay/EventType;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/pay/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/EventType;

    return-object v0
.end method

.method public static b()[Lcom/xingluo/platform/single/pay/EventType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/pay/EventType;->l:[Lcom/xingluo/platform/single/pay/EventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/pay/EventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Lcom/xingluo/platform/single/pay/listener/b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/EventType;->factory:Lcom/xingluo/platform/single/pay/listener/b;

    return-object v0
.end method
