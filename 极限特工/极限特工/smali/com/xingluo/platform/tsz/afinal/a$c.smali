.class Lcom/xingluo/platform/tsz/afinal/a$c;
.super Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/tsz/afinal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xingluo/platform/tsz/afinal/core/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5


# instance fields
.field final synthetic f:Lcom/xingluo/platform/tsz/afinal/a;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/tsz/afinal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/tsz/afinal/a$c;->f:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-direct {p0}, Lcom/xingluo/platform/tsz/afinal/core/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/tsz/afinal/a;Lcom/xingluo/platform/tsz/afinal/a$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a$c;-><init>(Lcom/xingluo/platform/tsz/afinal/a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$c;->f:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->a(Lcom/xingluo/platform/tsz/afinal/a;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$c;->f:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->b(Lcom/xingluo/platform/tsz/afinal/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$c;->f:Lcom/xingluo/platform/tsz/afinal/a;

    invoke-static {v0}, Lcom/xingluo/platform/tsz/afinal/a;->c(Lcom/xingluo/platform/tsz/afinal/a;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$c;->f:Lcom/xingluo/platform/tsz/afinal/a;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a;->a(Lcom/xingluo/platform/tsz/afinal/a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/xingluo/platform/tsz/afinal/a$c;->f:Lcom/xingluo/platform/tsz/afinal/a;

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/tsz/afinal/a;->b(Lcom/xingluo/platform/tsz/afinal/a;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected varargs synthetic b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/tsz/afinal/a$c;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
