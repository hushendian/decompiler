.class public Lcom/xingluo/platform/ad/suspend/j;
.super Lcom/xingluo/platform/ad/suspend/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/ad/suspend/j$a;,
        Lcom/xingluo/platform/ad/suspend/j$b;
    }
.end annotation


# static fields
.field private static final J:Ljava/lang/String; = "XLPopupWindowExtend"

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Z

.field private F:Lcom/xingluo/platform/ad/suspend/j$a;

.field private G:Z

.field private H:I

.field private final I:[I

.field private K:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private L:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private M:I

.field private N:I

.field private d:Landroid/content/Context;

.field private e:Landroid/view/WindowManager;

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/View$OnTouchListener;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:[I

.field private z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xingluo/platform/ad/suspend/j;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/h;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/xingluo/platform/ad/suspend/j;->k:I

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->m:Z

    iput-boolean v2, p0, Lcom/xingluo/platform/ad/suspend/j;->n:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->o:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->z:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->A:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/xingluo/platform/ad/suspend/j;->G:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/j;->H:I

    new-array v0, v1, [I

    const v1, 0x10100aa

    aput v1, v0, v2

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->I:[I

    new-instance v0, Lcom/xingluo/platform/ad/suspend/k;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/k;-><init>(Lcom/xingluo/platform/ad/suspend/j;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->L:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->r:I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/j;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->u:I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/j;->v:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x580

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->l:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupWindow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/j;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->K:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v0, -0x2

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_3

    :goto_0
    new-instance v2, Lcom/xingluo/platform/ad/suspend/j$b;

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/xingluo/platform/ad/suspend/j$b;-><init>(Lcom/xingluo/platform/ad/suspend/j;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/ad/suspend/j$b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/xingluo/platform/ad/suspend/j$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    :goto_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/j;->w:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/j;->x:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/suspend/j;->e(Z)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    aget v2, v2, v0

    add-int/2addr v2, p3

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p4

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x33

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->z:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, p0, Lcom/xingluo/platform/ad/suspend/j;->x:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_0

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, p0, Lcom/xingluo/platform/ad/suspend/j;->w:I

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/xingluo/platform/ad/suspend/j;->w:I

    add-int/2addr v7, v4

    add-int/2addr v7, p3

    iget v8, p0, Lcom/xingluo/platform/ad/suspend/j;->x:I

    add-int/2addr v8, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    invoke-direct {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v6, v1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    aget v4, v4, v0

    add-int/2addr v4, p3

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    iput v4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/xingluo/platform/ad/suspend/j;->z:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/j;->z:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p4

    iget-object v5, p0, Lcom/xingluo/platform/ad/suspend/j;->z:[I

    aget v5, v5, v1

    sub-int/2addr v5, p4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v2

    if-ge v4, v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    const/16 v2, 0x53

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    aget v1, v3, v1

    sub-int v1, v2, v1

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_2
    :goto_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v0

    :cond_3
    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    aget v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/suspend/j;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xingluo/platform/ad/suspend/j;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;II)V
    .locals 2

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->r()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->L:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput p2, p0, Lcom/xingluo/platform/ad/suspend/j;->M:I

    iput p3, p0, Lcom/xingluo/platform/ad/suspend/j;->N:I

    return-void
.end method

.method private b(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/ad/suspend/j;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->M:I

    return v0
.end method

.method static synthetic d(Lcom/xingluo/platform/ad/suspend/j;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->N:I

    return v0
.end method

.method private e(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->E:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/j;->E:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/xingluo/platform/ad/suspend/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->E:Z

    return v0
.end method

.method private f(I)I
    .locals 4

    const/high16 v3, 0x20000

    const v0, -0x68219

    and-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->G:Z

    if-eqz v1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->j:Z

    if-nez v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    or-int/2addr v0, v3

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->m:Z

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->n:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->o:Z

    if-nez v1, :cond_4

    or-int/lit16 v0, v0, 0x200

    :cond_4
    return v0

    :cond_5
    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->k:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    or-int/2addr v0, v3

    goto :goto_0
.end method

.method static synthetic f(Lcom/xingluo/platform/ad/suspend/j;)[I
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->I:[I

    return-object v0
.end method

.method static synthetic g(Lcom/xingluo/platform/ad/suspend/j;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->p:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic h(Lcom/xingluo/platform/ad/suspend/j;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    return-object v0
.end method

.method private q()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->H:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->g:Z

    if-eqz v1, :cond_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->H:I

    goto :goto_0
.end method

.method private r()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->K:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->L:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->K:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;IZ)I
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->y:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    aget v3, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    sub-int/2addr v0, p2

    aget v2, v2, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->A:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->A:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->A:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/j;->H:I

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/j;->q:I

    iput p2, p0, Lcom/xingluo/platform/ad/suspend/j;->t:I

    return-void
.end method

.method public a(IIIIZ)V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    if-eq p3, v4, :cond_0

    iput p3, p0, Lcom/xingluo/platform/ad/suspend/j;->s:I

    invoke-virtual {p0, p3}, Lcom/xingluo/platform/ad/suspend/j;->e(I)V

    :cond_0
    if-eq p4, v4, :cond_1

    iput p4, p0, Lcom/xingluo/platform/ad/suspend/j;->v:I

    invoke-virtual {p0, p4}, Lcom/xingluo/platform/ad/suspend/j;->d(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/xingluo/platform/ad/suspend/j;->q:I

    if-gez v2, :cond_9

    iget v2, p0, Lcom/xingluo/platform/ad/suspend/j;->q:I

    :goto_1
    if-eq p3, v4, :cond_4

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v3, v2, :cond_4

    iput v2, p0, Lcom/xingluo/platform/ad/suspend/j;->s:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move p5, v1

    :cond_4
    iget v2, p0, Lcom/xingluo/platform/ad/suspend/j;->t:I

    if-gez v2, :cond_a

    iget v2, p0, Lcom/xingluo/platform/ad/suspend/j;->t:I

    :goto_2
    if-eq p4, v4, :cond_5

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v2, :cond_5

    iput v2, p0, Lcom/xingluo/platform/ad/suspend/j;->v:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move p5, v1

    :cond_5
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v2, p1, :cond_6

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move p5, v1

    :cond_6
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, p2, :cond_7

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move p5, v1

    :cond_7
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->q()I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move p5, v1

    :cond_8
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/xingluo/platform/ad/suspend/j;->f(I)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v2, v3, :cond_b

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_3
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/xingluo/platform/ad/suspend/j;->s:I

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/xingluo/platform/ad/suspend/j;->v:I

    goto :goto_2

    :cond_b
    move v1, p5

    goto :goto_3
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/j;->B:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/j;->p:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/ad/suspend/j;->b(Landroid/view/View;II)V

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->f:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/j;->g:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/xingluo/platform/ad/suspend/j;->e(Z)V

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->t:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->t:I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/j;->v:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->q:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/j;->q:I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/j;->s:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_3
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->q()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/j;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;III)V
    .locals 2

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->g:Z

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->q()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, v1}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p2, :cond_2

    const/16 v0, 0x13

    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v1}, Lcom/xingluo/platform/ad/suspend/j;->b(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x15

    goto :goto_1
.end method

.method public a(Lcom/xingluo/platform/ad/suspend/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/j;->F:Lcom/xingluo/platform/ad/suspend/j$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/j;->j:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->H:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/j;->k:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;II)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/j;->m:Z

    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xingluo/platform/ad/suspend/j;->a(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->G:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/j;->l:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/j;->n:Z

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/j;->u:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/j;->o:Z

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/ad/suspend/j;->r:I

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->j:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->k:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->l:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->m:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->n:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->o:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->u:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/j;->r:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->f:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/j;->E:Z

    return v0
.end method

.method public o()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->r()V

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v4, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    iput-boolean v3, p0, Lcom/xingluo/platform/ad/suspend/j;->f:Z

    sput-boolean v3, Lcom/xingluo/platform/ad/suspend/j;->isPopupWindowShow:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->F:Lcom/xingluo/platform/ad/suspend/j$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->F:Lcom/xingluo/platform/ad/suspend/j$a;

    invoke-interface {v0}, Lcom/xingluo/platform/ad/suspend/j$a;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v4, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    iput-boolean v3, p0, Lcom/xingluo/platform/ad/suspend/j;->f:Z

    sput-boolean v3, Lcom/xingluo/platform/ad/suspend/j;->isPopupWindowShow:Z

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->F:Lcom/xingluo/platform/ad/suspend/j$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->F:Lcom/xingluo/platform/ad/suspend/j$a;

    invoke-interface {v0}, Lcom/xingluo/platform/ad/suspend/j$a;->a()V

    :cond_3
    throw v1
.end method

.method public p()V
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->h:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/j;->q()I

    move-result v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v3, v4, :cond_2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move v1, v2

    :cond_2
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Lcom/xingluo/platform/ad/suspend/j;->f(I)I

    move-result v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/j;->e:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/j;->i:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method
