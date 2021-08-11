.class public Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;
.super Ljava/lang/Object;
.source "FlingAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlingAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mMaxLengthSeconds:F

.field mSpeedUpFactor:F

.field mX2:F

.field mY2:F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/statusbar/FlingAnimationUtils;
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iget v3, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    iget v4, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mX2:F

    iget v5, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mY2:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/util/DisplayMetrics;FFFF)V

    return-object v6
.end method

.method public reset()Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mX2:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mY2:F

    return-object p0
.end method

.method public setMaxLengthSeconds(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    return-object p0
.end method

.method public setSpeedUpFactor(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    return-object p0
.end method

.method public setX2(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mX2:F

    return-object p0
.end method

.method public setY2(F)Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/FlingAnimationUtils$Builder;->mY2:F

    return-object p0
.end method
