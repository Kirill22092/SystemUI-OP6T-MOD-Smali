.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# instance fields
.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mTintColor:I

.field private mViewAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 64
    new-instance p1, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 66
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/4 p1, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method private updateColorWithTint(Z)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    .line 142
    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 145
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    goto :goto_3

    .line 147
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_2

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-eq v0, v1, :cond_5

    .line 152
    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 158
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 162
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    .line 163
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method


# virtual methods
.method protected canReceivePointerEvents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object p0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTint()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    return p0
.end method

.method public getViewAlpha()F
    .locals 0

    .line 198
    iget p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 95
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 114
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTint(I)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTint(IZ)V

    return-void
.end method

.method public setTint(IZ)V
    .locals 1

    .line 131
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    .line 135
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method public setViewAlpha(F)V
    .locals 2

    .line 184
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 188
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 185
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alpha cannot be NaN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
