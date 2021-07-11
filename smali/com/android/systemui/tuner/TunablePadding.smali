.class public Lcom/android/systemui/tuner/TunablePadding;
.super Ljava/lang/Object;
.source "TunablePadding.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
    }
.end annotation


# instance fields
.field private final mDefaultSize:I

.field private final mDensity:F

.field private final mFlags:I

.field private final mView:Landroid/view/View;


# direct methods
.method private getPadding(II)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/systemui/tuner/TunablePadding;->mFlags:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 57
    iget p1, p0, Lcom/android/systemui/tuner/TunablePadding;->mDefaultSize:I

    if-eqz p2, :cond_0

    .line 60
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iget p1, p0, Lcom/android/systemui/tuner/TunablePadding;->mDensity:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 63
    :catch_0
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isLayoutRtl()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result p2

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result v2

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result v0

    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result p0

    .line 65
    invoke-virtual {v1, p2, v2, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
