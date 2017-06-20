.class final enum Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/gameplus/utils/ApkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SHELL_CMD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

.field private static final synthetic b:[Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;


# instance fields
.field command:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    const-string v1, "CHECK_SU_BINARY"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/xbin/which"

    aput-object v3, v2, v4

    const-string v3, "su"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;->a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    new-array v0, v5, [Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    sget-object v1, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;->a:Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;->b:[Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;->command:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;
    .locals 1

    const-class v0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    return-object v0
.end method

.method public static a()[Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;->b:[Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    array-length v1, v0

    new-array v2, v1, [Lcom/xingluo/platform/gameplus/utils/ApkUtil$SHELL_CMD;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
