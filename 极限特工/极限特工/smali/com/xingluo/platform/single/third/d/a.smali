.class public abstract Lcom/xingluo/platform/single/third/d/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/xingluo/platform/single/order/Order;

.field protected c:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/app/Activity;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xingluo/platform/single/order/Order;",
            "Lcom/xingluo/platform/single/callback/IXLSDKCallBack;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/xingluo/platform/single/third/dao/ThirdPayTypeData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/single/third/d/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xingluo/platform/single/third/d/a;->b:Lcom/xingluo/platform/single/order/Order;

    iput-object p3, p0, Lcom/xingluo/platform/single/third/d/a;->c:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

    iput-object p5, p0, Lcom/xingluo/platform/single/third/d/a;->d:Ljava/util/List;

    iput p4, p0, Lcom/xingluo/platform/single/third/d/a;->e:I

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/d/a;->a()V

    return-void
.end method
