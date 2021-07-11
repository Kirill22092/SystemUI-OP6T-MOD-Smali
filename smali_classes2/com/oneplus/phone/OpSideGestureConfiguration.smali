.class public Lcom/oneplus/phone/OpSideGestureConfiguration;
.super Ljava/lang/Object;
.source "OpSideGestureConfiguration.java"


# static fields
.field public static final PORTRAIT_NON_DETECT_SCALE:F

.field private static sScreenHeight:I

.field private static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.portrait_non.detect.scale"

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    sput v0, Lcom/oneplus/phone/OpSideGestureConfiguration;->PORTRAIT_NON_DETECT_SCALE:F

    const-string v0, "persist.gesture_button.corner"

    const/16 v1, 0xb

    .line 19
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    return-void
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 76
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenWidth:I

    .line 77
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenHeight:I

    return-void
.end method

.method public static boundToRange(III)I
    .locals 0

    .line 159
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static convertDpToPixel(F)I
    .locals 1

    .line 137
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getAnimCancelDistance()I
    .locals 1

    const v0, 0x410ccccd    # 8.8f

    .line 133
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getAnimRadius()I
    .locals 1

    const/high16 v0, 0x42d10000    # 104.5f

    .line 109
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getAnimSwitchDistance()I
    .locals 1

    const v0, 0x421a6666    # 38.6f

    .line 129
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getBezierControlOffset1()I
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 113
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getBezierControlOffsetSwitch2()I
    .locals 1

    const/high16 v0, 0x421c0000    # 39.0f

    .line 121
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getIconSize()I
    .locals 1

    const/high16 v0, 0x41500000    # 13.0f

    .line 163
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    sget p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenHeight:I

    return p0

    .line 144
    :cond_2
    :goto_0
    sget p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenWidth:I

    return p0

    .line 142
    :cond_3
    :goto_1
    sget p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenHeight:I

    return p0
.end method

.method public static getScreenWidth(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    sget p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenWidth:I

    return p0

    .line 153
    :cond_2
    :goto_0
    sget p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenHeight:I

    return p0

    .line 151
    :cond_3
    :goto_1
    sget p0, Lcom/oneplus/phone/OpSideGestureConfiguration;->sScreenWidth:I

    return p0
.end method

.method public static getWindowHeight(I)I
    .locals 3

    .line 98
    invoke-static {p0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenHeight(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/oneplus/phone/OpSideGestureConfiguration;->PORTRAIT_NON_DETECT_SCALE:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getAnimRadius()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 100
    invoke-static {p0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getScreenHeight(I)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getWindowWidth()I
    .locals 1

    const v0, 0x421a6666    # 38.6f

    .line 105
    invoke-static {v0}, Lcom/oneplus/phone/OpSideGestureConfiguration;->convertDpToPixel(F)I

    move-result v0

    return v0
.end method
