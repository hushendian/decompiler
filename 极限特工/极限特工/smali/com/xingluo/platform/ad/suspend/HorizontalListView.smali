.class public Lcom/xingluo/platform/ad/suspend/HorizontalListView;
.super Landroid/widget/AdapterView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAlwaysOverrideTouch:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataChanged:Z

    new-instance v0, Lcom/xingluo/platform/ad/suspend/a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/a;-><init>(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/xingluo/platform/ad/suspend/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/b;-><init>(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->initView()V

    return-void
.end method

.method static synthetic access$2(Lcom/xingluo/platform/ad/suspend/HorizontalListView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$4(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 3

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private fillList(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->fillListRight(II)V

    invoke-virtual {p0, v1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->fillListLeft(II)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private fillListLeft(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    if-gez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    goto :goto_0
.end method

.method private fillListRight(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mCurrentX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    :cond_2
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    :cond_3
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    goto :goto_0
.end method

.method private declared-synchronized initView()V
    .locals 3

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mCurrentX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeNonVisibleItems(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-lez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDisplayOffset:I

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mLeftViewIndex:I

    invoke-virtual {p0, v3}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mRightViewIndex:I

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataChanged:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->removeAllViewsInLayout()V

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataChanged:Z

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    :cond_3
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_4
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mMaxX:I

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_5
    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mCurrentX:I

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->removeNonVisibleItems(I)V

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->fillList(I)V

    invoke-direct {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->positionItems(I)V

    iget v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    iput v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mCurrentX:I

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/suspend/c;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/ad/suspend/c;-><init>(Lcom/xingluo/platform/ad/suspend/HorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->reset()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/ad/suspend/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
