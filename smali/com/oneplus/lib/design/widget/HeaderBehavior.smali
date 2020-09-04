.class abstract Lcom/oneplus/lib/design/widget/HeaderBehavior;
.super Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 47
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 47
    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Lcom/oneplus/support/core/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v3

    const/4 v4, 0x0

    .line 243
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p3

    move v9, p4

    .line 241
    invoke-virtual/range {v1 .. v9}, Lcom/oneplus/support/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 247
    iget-object p3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mScroller:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {p3}, Lcom/oneplus/support/core/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 248
    new-instance p3, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;

    invoke-direct {p3, p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior$FlingRunnable;-><init>(Lcom/oneplus/lib/design/widget/HeaderBehavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object p3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 249
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, p0}, Lcom/oneplus/support/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    .line 252
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p0

    return p0
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 58
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 62
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 65
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    return v2

    .line 69
    :cond_1
    invoke-static {p3}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_5

    goto :goto_0

    .line 83
    :cond_2
    iget p2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    if-ne p2, p1, :cond_3

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-ne p2, p1, :cond_4

    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 94
    iget p2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 95
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le p2, v0, :cond_7

    .line 96
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 97
    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_0

    .line 104
    :cond_5
    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 105
    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 106
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 71
    :cond_6
    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 73
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 74
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, p2, v0, v1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 75
    iput v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 76
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 77
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 114
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 115
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    :cond_8
    iget-boolean p0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    return p0
.end method

.method public onTouchEvent(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 127
    :cond_0
    invoke-static {p3}, Lcom/oneplus/support/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    const/4 v3, -0x1

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    goto/16 :goto_1

    .line 143
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v2

    .line 148
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 149
    iget v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int/2addr v2, v0

    .line 151
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v3, v4, :cond_4

    .line 152
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-lez v2, :cond_3

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_3
    add-int/2addr v2, v4

    :cond_4
    :goto_0
    move v6, v2

    .line 160
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v2, :cond_8

    .line 161
    iput v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 163
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-static {v0, v4}, Lcom/oneplus/support/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v10

    .line 174
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v0

    neg-int v8, v0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 178
    :cond_6
    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 179
    iput v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 180
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 181
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 129
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 132
    invoke-virtual {p1, p2, v0, v3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 133
    iput v3, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 134
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 135
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 188
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_9

    .line 189
    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    return v1

    :cond_a
    return v2
.end method

.method final scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 226
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    return p0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    return p0
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_0

    if-lt p1, p4, :cond_0

    if-gt p1, p5, :cond_0

    .line 208
    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 211
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
