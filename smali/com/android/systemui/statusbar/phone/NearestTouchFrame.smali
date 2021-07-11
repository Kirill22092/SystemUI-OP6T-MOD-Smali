.class public Lcom/android/systemui/statusbar/phone/NearestTouchFrame;
.super Landroid/widget/FrameLayout;
.source "NearestTouchFrame.java"


# instance fields
.field private final mClickableChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsActive:Z

.field private final mOffset:[I

.field private final mTmpInt:[I

.field private mTouchingChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Configuration;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/Configuration;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    new-array p1, p1, [I

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    .line 50
    iget p1, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p2, 0x258

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mIsActive:Z

    return-void
.end method

.method private addClickableChildren(Landroid/view/ViewGroup;)V
    .locals 4

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 73
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->addClickableChildren(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private distance(Landroid/view/View;Landroid/view/MotionEvent;)I
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTmpInt:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    aget v1, p0, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 110
    aget v0, v0, v1

    aget p0, p0, v1

    sub-int/2addr v0, p0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v2

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 114
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 116
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private findNearestChild(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$dFYK0EjGBZUG5FTAJ9pyZPnsifY;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$dFYK0EjGBZUG5FTAJ9pyZPnsifY;

    .line 100
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$c68uozdLu3LZY-hrzFrFQ-dtMIM;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$c68uozdLu3LZY-hrzFrFQ-dtMIM;-><init>(Lcom/android/systemui/statusbar/phone/NearestTouchFrame;Landroid/view/MotionEvent;)V

    .line 101
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;

    .line 102
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 104
    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$findNearestChild$0(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;
    .locals 1

    .line 101
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->distance(Landroid/view/View;Landroid/view/MotionEvent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$findNearestChild$1(Landroid/util/Pair;)I
    .locals 0

    .line 102
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$findNearestChild$2(Landroid/util/Pair;)Landroid/view/View;
    .locals 0

    .line 103
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$findNearestChild$0$NearestTouchFrame(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$findNearestChild$0(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 62
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mOffset:[I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mClickableChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 57
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->addClickableChildren(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mIsActive:Z

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->findNearestChild(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->mTouchingChild:Landroid/view/View;

    .line 88
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 91
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
