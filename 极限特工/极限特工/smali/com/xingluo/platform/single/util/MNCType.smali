.class public final enum Lcom/xingluo/platform/single/util/MNCType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/single/util/MNCType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/single/util/MNCType;

.field public static final enum b:Lcom/xingluo/platform/single/util/MNCType;

.field public static final enum c:Lcom/xingluo/platform/single/util/MNCType;

.field public static final enum d:Lcom/xingluo/platform/single/util/MNCType;

.field public static final enum e:Lcom/xingluo/platform/single/util/MNCType;

.field private static final synthetic f:[Lcom/xingluo/platform/single/util/MNCType;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xingluo/platform/single/util/MNCType;

    const-string v1, "CHINA_MOBILE"

    const-string v2, "cm"

    invoke-direct {v0, v1, v3, v2}, Lcom/xingluo/platform/single/util/MNCType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/util/MNCType;->a:Lcom/xingluo/platform/single/util/MNCType;

    new-instance v0, Lcom/xingluo/platform/single/util/MNCType;

    const-string v1, "CHINA_UNICOM"

    const-string v2, "cu"

    invoke-direct {v0, v1, v4, v2}, Lcom/xingluo/platform/single/util/MNCType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    new-instance v0, Lcom/xingluo/platform/single/util/MNCType;

    const-string v1, "CHINA_TELCOM"

    const-string v2, "ct"

    invoke-direct {v0, v1, v5, v2}, Lcom/xingluo/platform/single/util/MNCType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    new-instance v0, Lcom/xingluo/platform/single/util/MNCType;

    const-string v1, "CHINA_OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v6, v2}, Lcom/xingluo/platform/single/util/MNCType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/util/MNCType;->d:Lcom/xingluo/platform/single/util/MNCType;

    new-instance v0, Lcom/xingluo/platform/single/util/MNCType;

    const-string v1, "UNKNOWN"

    const-string v2, "unknow"

    invoke-direct {v0, v1, v7, v2}, Lcom/xingluo/platform/single/util/MNCType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/single/util/MNCType;->e:Lcom/xingluo/platform/single/util/MNCType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xingluo/platform/single/util/MNCType;

    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->a:Lcom/xingluo/platform/single/util/MNCType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->d:Lcom/xingluo/platform/single/util/MNCType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/single/util/MNCType;->e:Lcom/xingluo/platform/single/util/MNCType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xingluo/platform/single/util/MNCType;->f:[Lcom/xingluo/platform/single/util/MNCType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/MNCType;
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/util/MNCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/util/MNCType;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->d:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->a:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()[Lcom/xingluo/platform/single/util/MNCType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->f:[Lcom/xingluo/platform/single/util/MNCType;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/single/util/MNCType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
