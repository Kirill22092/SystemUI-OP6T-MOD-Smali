.class public Lcom/android/systemui/statusbar/notification/NotificationUtils;
.super Lcom/oneplus/systemui/statusbar/notification/OpNotificationUtils;
.source "NotificationUtils.java"


# static fields
.field private static final sLocationBase:[I

.field private static final sLocationOffset:[I

.field private static sUseNewInterruptionModel:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 43
    sput-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    new-array v0, v0, [I

    .line 44
    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    return-void
.end method

.method public static getFontScaledHeight(Landroid/content/Context;I)I
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 87
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F
    .locals 2

    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    sget-object v1, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x1

    .line 78
    aget p1, v0, p0

    aget p0, v1, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    return p0
.end method

.method public static interpolate(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static interpolateColors(IIF)I
    .locals 4

    .line 69
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 70
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 71
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    float-to-int v2, v2

    .line 72
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 68
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/oneplus/systemui/statusbar/notification/OpNotificationUtils;->isGrayscaleInternal(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    return p0
.end method

.method public static useNewInterruptionModel(Landroid/content/Context;)Z
    .locals 2

    .line 97
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sUseNewInterruptionModel:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "new_interruption_model"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sUseNewInterruptionModel:Ljava/lang/Boolean;

    .line 101
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sUseNewInterruptionModel:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
