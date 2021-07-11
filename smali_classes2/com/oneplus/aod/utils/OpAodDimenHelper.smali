.class public Lcom/oneplus/aod/utils/OpAodDimenHelper;
.super Ljava/lang/Object;
.source "OpAodDimenHelper.java"


# direct methods
.method public static convertDpToFixedPx(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static convertDpToFixedPx(Landroid/content/Context;II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 18
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static convertDpToFixedPx2(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 28
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 27
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
