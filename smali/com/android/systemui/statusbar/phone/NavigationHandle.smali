.class public Lcom/android/systemui/statusbar/phone/NavigationHandle;
.super Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;
.source "NavigationHandle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# static fields
.field public static final DEBUG:Z


# instance fields
.field private mBarColorAnimator:Landroid/animation/ValueAnimator;

.field protected mBottom:I

.field private mBottomLand:I

.field private mContext:Landroid/content/Context;

.field private mCurrentColor:I

.field private final mDarkColor:I

.field private mDarkIntensity:F

.field private final mFullScreenDarkColor:I

.field private final mFullScreenLightColor:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFullScreenColor:Z

.field private mIsVertical:Z

.field private mLandscapeWidth:I

.field private final mLightColor:I

.field protected final mPaint:Landroid/graphics/Paint;

.field private mPortraitWidth:I

.field private mPreTopAppInFullScreenList:Z

.field protected mRadius:I

.field private mRequiresInvalidate:Z

.field private mShouldChangeColor:Z

.field private mTargetColor:I

.field private mUpdateColorTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NavigationHandle"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/phone/OpNavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsVertical:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mShouldChangeColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPreTopAppInFullScreenList:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsFullScreenColor:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    const v1, 0x10501af

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottomLand:I

    sget v1, Lcom/android/systemui/R$dimen;->navigation_home_handle_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPortraitWidth:I

    sget v1, Lcom/android/systemui/R$dimen;->navigation_home_handle_width_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLandscapeWidth:I

    sget v1, Lcom/android/systemui/R$color;->op_home_handle_light_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    sget v1, Lcom/android/systemui/R$color;->op_home_handle_dark_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    sget v1, Lcom/android/systemui/R$color;->op_home_handle_fullscreen_light_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mFullScreenLightColor:I

    sget v1, Lcom/android/systemui/R$color;->op_home_handle_fullscreen_dark_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mFullScreenDarkColor:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mTargetColor:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBarColorAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBarColorAnimator:Landroid/animation/ValueAnimator;

    const-string p2, "persist.homebar.anim.time"

    const/16 v0, 0x12c

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBarColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBarColorAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mUpdateColorTask:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NavigationHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mShouldChangeColor:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mCurrentColor:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NavigationHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPreTopAppInFullScreenList:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mTargetColor:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mTargetColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationHandle;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mFullScreenDarkColor:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/NavigationHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsFullScreenColor:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationHandle;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBarColorAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mFullScreenLightColor:I

    return p0
.end method

.method private updateDisplaySize()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_handle_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottomLand:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_home_handle_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPortraitWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navigation_home_handle_width_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLandscapeWidth:I

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsVertical:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    add-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottomLand:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    :goto_0
    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, v2

    add-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->DEBUG:Z

    const-string v1, "NavigationHandle"

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setDarkIntensity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPreTopAppInFullScreenList:Z

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShouldChangeColor PreTopInFull:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPreTopAppInFullScreenList:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " currentIsInFullScreenList:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " intensity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPreTopAppInFullScreenList:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mShouldChangeColor:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->triggerChangeColorAnimation()V

    :cond_2
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsFullScreenColor:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mFullScreenLightColor:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsFullScreenColor:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mFullScreenDarkColor:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mShouldChangeColor:Z

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRequiresInvalidate:Z

    :cond_7
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    :cond_8
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setVertical(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->updateDisplaySize()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsVertical:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPortraitWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLandscapeWidth:I

    :goto_0
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public triggerChangeColorAnimation()V
    .locals 3

    const-string v0, "NavigationHandle"

    const-string/jumbo v1, "triggerChangeColorAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsFullScreenColor:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mIsFullScreenColor:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isInFullScreenListApp()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mUpdateColorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mUpdateColorTask:Ljava/lang/Runnable;

    const/16 v1, 0x32

    const-string v2, "persist.homebar.task.delay"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const-string v1, "current color is match top app. no need to change color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mShouldChangeColor:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mUpdateColorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
