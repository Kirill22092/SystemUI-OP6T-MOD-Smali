.class public Lcom/oneplus/lib/util/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# static fields
.field public static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public static final FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

.field public static final FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public static PROPNAME_HEIGHT:Ljava/lang/String;

.field public static PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

.field public static PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

.field public static PROPNAME_WIDTH:Ljava/lang/String;

.field private static mEndValues:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/FastOutLinearInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 18
    new-instance v0, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 23
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const-string v0, "location:left"

    .line 133
    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_LEFT:Ljava/lang/String;

    const-string v0, "location:top"

    .line 134
    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_SCREENLOCATION_TOP:Ljava/lang/String;

    const-string v0, "space:width"

    .line 135
    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_WIDTH:Ljava/lang/String;

    const-string v0, "space:height"

    .line 136
    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->PROPNAME_HEIGHT:Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/oneplus/lib/util/AnimatorUtils;->mEndValues:Landroid/os/Bundle;

    return-void
.end method
