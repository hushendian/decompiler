.class public Lcom/tendcloud/tenddata/game/q;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/q;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    const-class v1, Lcom/tendcloud/tenddata/game/q;

    monitor-enter v1

    .line 126
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 127
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    const-string v0, "TDLog"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit v1

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    :try_start_1
    const-string v0, "TDLog"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 84
    const/16 v1, 0x7d0

    move v2, v0

    .line 85
    :goto_1
    const/16 v4, 0x64

    if-ge v0, v4, :cond_0

    .line 86
    if-le v3, v1, :cond_2

    .line 87
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tendcloud/tenddata/game/q;->b(Ljava/lang/String;I)V

    .line 89
    add-int/lit16 v2, v1, 0x7d0

    .line 85
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/q;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/tendcloud/tenddata/game/q;->a:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/q;->a(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/tendcloud/tenddata/game/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static dForDeveloper(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/tendcloud/tenddata/game/q;->a:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/q;->a(Ljava/lang/String;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public static varargs dForInternal([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public static eForDeveloper(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/tendcloud/tenddata/game/q;->a:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/q;->a(Ljava/lang/String;I)V

    .line 68
    :cond_0
    return-void
.end method

.method public static eForInternal(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public static varargs eForInternal([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public static iForDeveloper(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/tendcloud/tenddata/game/q;->a:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/q;->a(Ljava/lang/String;I)V

    .line 58
    :cond_0
    return-void
.end method

.method public static varargs iForInternal([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
