.class public Lcom/xingluo/platform/ad/suspend/h;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "XLBaseSuspensionView"

.field protected static dataSize:I

.field protected static isPopupWindowShow:Z

.field protected static ivSuspensionView:Landroid/widget/ImageView;

.field protected static lotteryView:Landroid/view/View;

.field protected static resourceId:I


# instance fields
.field protected delayMillis:J

.field protected durationMillis:J

.field protected handlerImageView:Landroid/os/Handler;

.field protected runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/xingluo/platform/ad/suspend/h;->resourceId:I

    const/4 v0, 0x0

    sput v0, Lcom/xingluo/platform/ad/suspend/h;->dataSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->handlerImageView:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/xingluo/platform/ad/suspend/h;->durationMillis:J

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/xingluo/platform/ad/suspend/h;->delayMillis:J

    new-instance v0, Lcom/xingluo/platform/ad/suspend/i;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/i;-><init>(Lcom/xingluo/platform/ad/suspend/h;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->runnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/xingluo/platform/ad/suspend/h;->ivSuspensionView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/ad/suspend/h;->ivSuspensionView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->handlerImageView:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->handlerImageView:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->handlerImageView:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/xingluo/platform/ad/suspend/h;->durationMillis:J

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/xingluo/platform/ad/suspend/h;->delayMillis:J

    new-instance v0, Lcom/xingluo/platform/ad/suspend/i;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/i;-><init>(Lcom/xingluo/platform/ad/suspend/h;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->runnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/xingluo/platform/ad/suspend/h;->ivSuspensionView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/ad/suspend/h;->ivSuspensionView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->handlerImageView:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/h;->handlerImageView:Landroid/os/Handler;

    :cond_1
    return-void
.end method
