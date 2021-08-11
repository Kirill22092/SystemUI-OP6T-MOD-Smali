.class public Lcom/android/systemui/bubbles/BubbleExpandedView;
.super Landroid/widget/LinearLayout;
.source "BubbleExpandedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivitySurface:Landroid/view/SurfaceView;

.field private mActivityView:Landroid/app/ActivityView;

.field private mActivityViewContainer:Landroid/widget/FrameLayout;

.field private mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

.field private mBubble:Lcom/android/systemui/bubbles/Bubble;

.field private mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

.field private mCornerRadius:F

.field private mDisplaySize:Landroid/graphics/Point;

.field private mExpandedViewContainerLocation:[I

.field private mExpandedViewPadding:I

.field private mImeShowing:Z

.field private mIsOverflow:Z

.field private mKeyboardVisible:Z

.field private mMinHeight:I

.field private mNeedsNewHeight:Z

.field private mOverflowHeight:I

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mPointerHeight:I

.field private mPointerMargin:I

.field private mPointerView:Landroid/view/View;

.field private mPointerWidth:I

.field private mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

.field private mSettingsIconHeight:I

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

.field private mStateCallback:Landroid/app/ActivityView$StateCallback;

.field private mTaskId:I

.field private mVirtualDisplayWindowManager:Landroid/view/WindowManager;

.field private mVirtualImeView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object p1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZING:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    const-class p1, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/BubbleController;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mImeShowing:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mCornerRadius:F

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/android/systemui/bubbles/BubbleExpandedView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$1;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateDimensions()V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/bubbles/BubbleExpandedView;Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;)Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/bubbles/BubbleExpandedView;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleStackView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/bubbles/BubbleExpandedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/Bubble;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/bubbles/BubbleExpandedView;)Lcom/android/systemui/bubbles/BubbleController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubbleController:Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/ActivityView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleExpandedView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getBubbleKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/bubbles/BubbleExpandedView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mIsOverflow:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/bubbles/BubbleExpandedView;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/BubbleExpandedView;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mCornerRadius:F

    return p0
.end method

.method private didBackingContentChange(Lcom/android/systemui/bubbles/Bubble;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eq p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private getBubbleKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method private getMaxExpandedHeight()I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    :goto_1
    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    goto :goto_1
.end method

.method private getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVirtualImeViewAttrs(II)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const/16 v4, 0x218

    const/4 v5, -0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p1, 0x50

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p1, "ImeInsetsWindowWithoutContent"

    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0xd

    aput v0, p1, p2

    iput-object p1, p0, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    const/4 p1, 0x0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-ltz p0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private setImeWindowToDisplay(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplay()Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualDisplayWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_2

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualDisplayWindowManager:Landroid/view/WindowManager;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualImeView:Landroid/view/View;

    if-nez v2, :cond_3

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualImeView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualDisplayWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualImeView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualImeViewAttrs(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualDisplayWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualImeViewAttrs(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualImeView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mImeShowing:Z

    return-void

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mImeShowing:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mVirtualImeView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mImeShowing:Z

    :cond_5
    return-void
.end method

.method private usingActivityView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method applyThemeAttrs()V
    .locals 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010571

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mCornerRadius:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setCornerRadius(F)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->bubbles_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->bubbles_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public cleanUpExpandedState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityView;->release()V

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-interface {v0, v2}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove taskId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bubbles"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-void
.end method

.method getActivityView()Landroid/app/ActivityView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    return-object p0
.end method

.method getActivityViewLocationOnScreen()[I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getManageButtonBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method getTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mTaskId:I

    return p0
.end method

.method public getVirtualDisplayId()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getVirtualDisplayId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$BubbleExpandedView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->lambda$onFinishInflate$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$1$BubbleExpandedView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->lambda$onFinishInflate$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method notifyDisplayEmpty()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    sget-object v1, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->ACTIVITY_STARTED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;->INITIALIZED:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewStatus:Lcom/android/systemui/bubbles/BubbleExpandedView$ActivityViewStatus;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz v1, :cond_1

    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setImeWindowToDisplay(II)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->pointer_view:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerHeight:I

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/TriangleShape;->create(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->bubble_manage_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIconHeight:I

    sget v1, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    new-instance v1, Landroid/app/ActivityView;

    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZZZ)V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/systemui/bubbles/BubbleExpandedView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$2;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/ActivityView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v2, v1}, Landroid/app/ActivityView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v2, v1}, Landroid/app/ActivityView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivitySurface:Landroid/view/SurfaceView;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    new-instance v1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$BUIzmdcN6x4TJwxemNSjSITgNeY;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    sget v1, Lcom/android/systemui/R$dimen;->bubble_expanded_view_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewPadding:I

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iXgIC2YqSeoFlnxX0VwZo_0Hqrs;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleExpandedView$iXgIC2YqSeoFlnxX0VwZo_0Hqrs;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method performBackPressIfNeeded()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->performBackPress()V

    const/4 p0, 0x1

    return p0
.end method

.method populateExpandedView()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStateCallback:Landroid/app/ActivityView$StateCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView;->setCallback(Landroid/app/ActivityView$StateCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "Bubbles"

    const-string v0, "Cannot populate expanded view."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setContentVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityView;->getAlpha()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->bringToFront()V

    :cond_1
    return-void
.end method

.method setManageClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOverflow(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mIsOverflow:Z

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/bubbles/BubbleOverflowActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setPointerPosition(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewPadding:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method setStackView(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-void
.end method

.method setSurfaceZOrderedOnTop(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivitySurface:Landroid/view/SurfaceView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    return-void
.end method

.method snapshotActivitySurface()Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivitySurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v2}, Landroid/app/ActivityView;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p0}, Landroid/app/ActivityView;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p0

    return-object p0
.end method

.method update(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->didBackingContentChange(Lcom/android/systemui/bubbles/Bubble;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {v4}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to update entry with different key, new bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " old bubble: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Bubbles"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->bubbles_settings_button_description:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getAppName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    new-instance v1, Lcom/android/systemui/bubbles/BubbleExpandedView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/bubbles/BubbleExpandedView$3;-><init>(Lcom/android/systemui/bubbles/BubbleExpandedView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p1, v2}, Landroid/app/ActivityView;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    :goto_3
    return-void
.end method

.method updateDimensions()V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->bubble_expanded_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->bubble_overflow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mOverflowHeight:I

    sget v1, Lcom/android/systemui/R$dimen;->bubble_pointer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mPointerMargin:I

    return-void
.end method

.method updateHeight()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mOverflowHeight:I

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mIsOverflow:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mBubble:Lcom/android/systemui/bubbles/Bubble;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/Bubble;->getDesiredHeight(Landroid/content/Context;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getMaxExpandedHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    cmpl-float v2, v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    iget-boolean v2, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mKeyboardVisible:Z

    if-nez v2, :cond_3

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mNeedsNewHeight:Z

    :cond_3
    return-void
.end method

.method updateInsets(Landroid/view/WindowInsets;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v0}, Landroid/app/ActivityView;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {v1}, Landroid/app/ActivityView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setImeWindowToDisplay(II)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-static {v4, v4, v4, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityView;->setForwardedInsets(Landroid/graphics/Insets;)V

    :cond_2
    :goto_1
    return-void
.end method

.method updateObscuredTouchableRegion()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityView;->onLocationChanged()V

    :cond_0
    return-void
.end method

.method public updateView([I)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mExpandedViewContainerLocation:[I

    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->usingActivityView()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p1}, Landroid/app/ActivityView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p1}, Landroid/app/ActivityView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mActivityView:Landroid/app/ActivityView;

    invoke-virtual {p1}, Landroid/app/ActivityView;->onLocationChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateHeight()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleExpandedView;->mSettingsIcon:Lcom/android/systemui/statusbar/AlphaOptimizedButton;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method
