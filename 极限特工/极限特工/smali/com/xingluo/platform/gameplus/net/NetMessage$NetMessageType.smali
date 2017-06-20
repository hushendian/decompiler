.class public final enum Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/gameplus/net/NetMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

.field public static final enum b:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

.field public static final enum c:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

.field public static final enum d:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

.field public static final enum e:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

.field public static final enum f:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

.field private static final synthetic g:[Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const-string v1, "NetSuccess"

    invoke-direct {v0, v1, v3}, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->a:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    new-instance v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const-string v1, "NetFailure"

    invoke-direct {v0, v1, v4}, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->b:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    new-instance v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const-string v1, "NetDownloadling"

    invoke-direct {v0, v1, v5}, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->c:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    new-instance v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const-string v1, "NetDownloadSuccess"

    invoke-direct {v0, v1, v6}, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->d:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    new-instance v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const-string v1, "NetDownloadFailure"

    invoke-direct {v0, v1, v7}, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->e:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    new-instance v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const-string v1, "NetCancel"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->f:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    sget-object v1, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->a:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->b:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->c:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->d:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->e:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->f:Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->g:[Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;
    .locals 1

    const-class v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    return-object v0
.end method

.method public static a()[Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;->g:[Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/gameplus/net/NetMessage$NetMessageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
