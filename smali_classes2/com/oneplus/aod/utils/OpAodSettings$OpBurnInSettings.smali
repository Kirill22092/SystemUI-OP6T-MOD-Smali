.class public Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;
.super Ljava/lang/Object;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpAodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpBurnInSettings"
.end annotation


# instance fields
.field mBottom:I

.field mBottomRatio:F

.field private mContext:Landroid/content/Context;

.field mHandleClassName:Ljava/lang/String;

.field mLeft:I

.field mLeftRatio:F

.field mMovingDistanceId:I

.field mRight:I

.field mRightRatio:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mTop:I

.field mTopRatio:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTopRatio:F

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottomRatio:F

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeftRatio:F

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRightRatio:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTop:I

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottom:I

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeft:I

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRight:I

    sget v0, Lcom/android/systemui/R$dimen;->aod_moving_distance_default:I

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mMovingDistanceId:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenWidth:I

    iput p1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenHeight:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenHeight:I

    iput p1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenWidth:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getBound()Landroid/graphics/Rect;
    .locals 9

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeftRatio:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeft:I

    if-eq v0, v3, :cond_1

    iget-object v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTopRatio:F

    cmpl-float v5, v2, v1

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTop:I

    if-eq v2, v3, :cond_3

    iget-object v5, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    iget v5, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRightRatio:F

    cmpl-float v6, v5, v1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenWidth:I

    int-to-float v6, v6

    sub-float v5, v7, v5

    mul-float/2addr v6, v5

    float-to-int v5, v6

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRight:I

    if-eq v5, v3, :cond_5

    iget v6, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenWidth:I

    iget-object v8, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v5

    sub-int v5, v6, v5

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    iget v6, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottomRatio:F

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_6

    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenHeight:I

    int-to-float p0, p0

    sub-float/2addr v7, v6

    mul-float/2addr p0, v7

    float-to-int v4, p0

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottom:I

    if-eq v1, v3, :cond_7

    iget v3, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mScreenHeight:I

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result p0

    sub-int v4, v3, p0

    :cond_7
    :goto_3
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getHandleClass()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mHandleClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getMovingDistance(Landroid/content/Context;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mMovingDistanceId:I

    invoke-static {p1, p0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 1

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/R$styleable;->OpburnInSettings:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minTopRatio:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTopRatio:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTopRatio:F

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minBottomRatio:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottomRatio:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottomRatio:F

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minLeftRatio:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeftRatio:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeftRatio:F

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minRightRatio:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRightRatio:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRightRatio:F

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minTop:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTop:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mTop:I

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minBottom:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mBottom:I

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minLeft:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeft:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mLeft:I

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_minRight:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mRight:I

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_movingDistance:I

    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mMovingDistanceId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mMovingDistanceId:I

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_layoutParamsType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    sget p2, Lcom/android/systemui/R$styleable;->OpburnInSettings_handleClass:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpBurnInSettings;->mHandleClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
