.class public Lcom/xingluo/platform/single/third/view/RotateTextView;
.super Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/high16 v0, -0x3dd80000    # -42.0f

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/view/RotateTextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/third/view/RotateTextView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
