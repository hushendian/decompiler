.class Lcom/xingluo/platform/single/sdk/c/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sdk/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sdk/c/i;


# direct methods
.method private constructor <init>(Lcom/xingluo/platform/single/sdk/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/c/i$a;->a:Lcom/xingluo/platform/single/sdk/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xingluo/platform/single/sdk/c/i;Lcom/xingluo/platform/single/sdk/c/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sdk/c/i$a;-><init>(Lcom/xingluo/platform/single/sdk/c/i;)V

    return-void
.end method


# virtual methods
.method public PayResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i$a;->a:Lcom/xingluo/platform/single/sdk/c/i;

    invoke-virtual {v0, v1, p3}, Lcom/xingluo/platform/single/sdk/c/i;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i$a;->a:Lcom/xingluo/platform/single/sdk/c/i;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/c/i;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i$a;->a:Lcom/xingluo/platform/single/sdk/c/i;

    invoke-virtual {v0, v1, p3}, Lcom/xingluo/platform/single/sdk/c/i;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/i$a;->a:Lcom/xingluo/platform/single/sdk/c/i;

    invoke-virtual {v0, v1, p3}, Lcom/xingluo/platform/single/sdk/c/i;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
