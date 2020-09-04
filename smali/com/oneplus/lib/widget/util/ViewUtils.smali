.class public Lcom/oneplus/lib/widget/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final VIEW_STATE_IDS:[I

.field private static final VIEW_STATE_SETS:[[I

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 38
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    .line 53
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 54
    :goto_0
    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPViewDrawableStates:[I

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 55
    aget v3, v3, v2

    move v4, v1

    .line 56
    :goto_1
    sget-object v6, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    array-length v7, v6

    if-ge v4, v7, :cond_1

    .line 57
    aget v7, v6, v4

    if-ne v7, v3, :cond_0

    mul-int/lit8 v7, v2, 0x2

    .line 58
    aput v3, v0, v7

    add-int/2addr v7, v5

    add-int/lit8 v8, v4, 0x1

    .line 59
    aget v6, v6, v8

    aput v6, v0, v7

    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_2
    sget-object v2, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_IDS:[I

    array-length v2, v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    shl-int v2, v5, v2

    .line 65
    new-array v2, v2, [[I

    sput-object v2, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    move v2, v1

    .line 66
    :goto_2
    sget-object v4, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 68
    new-array v4, v4, [I

    move v6, v1

    move v7, v6

    .line 70
    :goto_3
    array-length v8, v0

    if-ge v6, v8, :cond_4

    add-int/lit8 v8, v6, 0x1

    .line 71
    aget v8, v0, v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_3

    add-int/lit8 v8, v7, 0x1

    .line 72
    aget v9, v0, v6

    aput v9, v4, v7

    move v7, v8

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 75
    :cond_4
    sget-object v6, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    aput-object v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_6

    .line 82
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v2, "computeFitSystemWindows"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v3, v1

    const-class v1, Landroid/graphics/Rect;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 84
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 85
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "ViewUtils"

    const-string v1, "Could not find method computeFitSystemWindows. Oh well."

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public static combineMeasuredStates(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 113
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 115
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ViewUtils"

    const-string p2, "Could not invoke computeFitSystemWindows"

    .line 117
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getViewState(I)[I
    .locals 2

    .line 95
    sget-object v0, Lcom/oneplus/lib/widget/util/ViewUtils;->VIEW_STATE_SETS:[[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 98
    aget-object p0, v0, p0

    return-object p0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid state set mask"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static scaleRect(Landroid/graphics/Rect;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 176
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 177
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 178
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
