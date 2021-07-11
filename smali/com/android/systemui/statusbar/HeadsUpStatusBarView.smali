.class public Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "HeadsUpStatusBarView.java"


# instance fields
.field private mAbsoluteStartPadding:I

.field private mCutOutInset:I

.field private mDisplayCutout:Landroid/view/DisplayCutout;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEndMargin:I

.field private mFirstLayout:Z

.field private mIconDrawingRect:Landroid/graphics/Rect;

.field private mIconPlaceholder:Landroid/view/View;

.field private mLayoutedIconRect:Landroid/graphics/Rect;

.field private mMaxWidth:I

.field private mOnDrawingRectChangedListener:Ljava/lang/Runnable;

.field private final mOnSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;

.field private mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mSysWinInset:I

.field private mTextView:Landroid/widget/TextView;

.field private mTmpPosition:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    .line 71
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    .line 203
    new-instance p1, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$3EjbzF6YolguGjurT443cwUG0Vs;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$3EjbzF6YolguGjurT443cwUG0Vs;-><init>(Lcom/android/systemui/statusbar/HeadsUpStatusBarView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 95
    sget p2, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget p3, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding_start:I

    .line 97
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    const p3, 0x10501c3

    .line 99
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    .line 103
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    const/16 p4, 0x438

    invoke-static {p2, p3, p4}, Lcom/oneplus/util/OpUtils;->getDimensionPixelSize(Landroid/content/res/Resources;II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    :cond_0
    const p2, 0x10501c2

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    .line 112
    iget p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p1, p3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;)V

    .line 176
    iput-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 177
    iput-object p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private getDisplaySize()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    .line 366
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-ne p1, v0, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a sensitivity change for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but mShowingEntry is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic lambda$onLayout$1()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updatePosition()V

    return-void
.end method

.method private updateDrawingRect()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 293
    iget-object v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 296
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private updateMaxWidth()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-eq v0, v1, :cond_0

    .line 121
    iput v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updatePosition()V
    .locals 9

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 225
    iget-object v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 226
    iget-object v4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    .line 227
    iget-object v5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 228
    iget-object v6, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    .line 230
    iget v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    add-int/2addr v2, v5

    .line 233
    iget-object v5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v5

    .line 239
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v3, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_1

    if-nez v5, :cond_1

    .line 240
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 241
    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v8, 0x30

    invoke-static {v6, v7, v8, v3}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 242
    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    :cond_1
    if-eqz v5, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v4

    :cond_2
    if-eq v0, v2, :cond_3

    sub-int/2addr v2, v0

    .line 266
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    add-int/2addr v2, v3

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 onLayout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    .line 267
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    invoke-virtual {p0, v2, v1, v0, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 272
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 276
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    :cond_4
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6

    .line 302
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    .line 308
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 313
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 314
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v5, 0x30

    invoke-static {v3, v4, v5, v2}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(Landroid/content/Context;Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V

    .line 316
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    .line 318
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4, v3}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 324
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    if-nez v0, :cond_4

    .line 330
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    if-nez v0, :cond_4

    .line 331
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 339
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    if-eqz v0, :cond_5

    .line 340
    iput v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 343
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getIconDrawingRect()Landroid/graphics/Rect;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getShowingEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method public synthetic lambda$new$0$HeadsUpStatusBarView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->lambda$new$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public synthetic lambda$onLayout$1$HeadsUpStatusBarView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->lambda$onLayout$1()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 371
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 355
    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 183
    sget v0, Lcom/android/systemui/R$id;->icon_placeholder:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 184
    sget v0, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 214
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 216
    new-instance p1, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$nzfnElI2xOD0W8y3WE5sPcHmFhw;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$HeadsUpStatusBarView$nzfnElI2xOD0W8y3WE5sPcHmFhw;-><init>(Lcom/android/systemui/statusbar/HeadsUpStatusBarView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-lez v0, :cond_0

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 130
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 156
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "heads_up_status_bar_view_super_parcelable"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 163
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    const-string v1, "first_layout"

    .line 164
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    const-string/jumbo v0, "visibility"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const-string v0, "alpha"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-void

    .line 157
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "heads_up_status_bar_view_super_parcelable"

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 147
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    const-string v2, "first_layout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p0

    const-string v1, "alpha"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public bridge synthetic onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->removeOnSensitivityChangedListener(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;)V

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_2

    .line 194
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnSensitivityChangedListener:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->addOnSensitivityChangedListener(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;)V

    :cond_2
    return-void
.end method

.method public setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelTranslation(F)V
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    return-void
.end method
