.class public final enum Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/FinalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

.field public static final enum b:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

.field public static final enum c:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

.field public static final enum d:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

.field private static final synthetic e:[Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    const-string v1, "Click"

    invoke-direct {v0, v1, v2}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->a:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    const-string v1, "LongClick"

    invoke-direct {v0, v1, v3}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->b:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    const-string v1, "ItemClick"

    invoke-direct {v0, v1, v4}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->c:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    new-instance v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    const-string v1, "itemLongClick"

    invoke-direct {v0, v1, v5}, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->d:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->a:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->b:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->c:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->d:Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->e:[Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;
    .locals 1

    const-class v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    return-object v0
.end method

.method public static a()[Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;->e:[Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/tsz/afinal/FinalActivity$Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
