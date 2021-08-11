.class public Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "HeadsUpAppearInterpolator.java"


# static fields
.field private static X1:F = 250.0f

.field private static X2:F = 200.0f

.field private static XTOT:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x437a0000    # 250.0f

    const/high16 v1, 0x43480000    # 200.0f

    add-float/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->getAppearPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method private static getAppearPath()Landroid/graphics/Path;
    .locals 10

    sget v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    sget v1, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X1:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v3, v1, v2

    div-float/2addr v3, v0

    mul-float/2addr v2, v1

    div-float v4, v2, v0

    div-float v6, v1, v0

    const/high16 v9, 0x3f900000    # 1.125f

    move-object v1, v8

    move v2, v3

    move v3, v9

    move v5, v9

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v1, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X1:F

    sget v2, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X2:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    div-float/2addr v3, v0

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    div-float v4, v1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v8

    move v2, v3

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v8
.end method

.method public static getFractionUntilOvershoot()F
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->X1:F

    sget v1, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float/2addr v0, v1

    return v0
.end method
