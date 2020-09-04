.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .locals 7

    .line 90
    new-instance v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 95
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    if-eqz p1, :cond_0

    .line 97
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    .line 98
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    .line 99
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 100
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public static create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 10

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 483
    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 484
    new-instance p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    move-object v4, p3

    move v6, p1

    move v7, p2

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    if-eqz p4, :cond_2

    .line 491
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result p1

    if-nez p1, :cond_2

    .line 493
    sget p1, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_x:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 494
    sget p2, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_y:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 495
    sget p4, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_radius:I

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 496
    sget p5, Lcom/android/systemui/R$color;->nav_key_button_shadow_color:I

    invoke-virtual {p0, p5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 497
    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setShadowProperties(IIII)V

    :cond_2
    return-object p3
.end method

.method public static create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 459
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 3

    .line 445
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 446
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 447
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 448
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 449
    invoke-static {v2, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 7

    .line 468
    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 469
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 470
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 468
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private regenerateBitmapIconCache()V
    .locals 8

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 299
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 300
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 304
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 306
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v0, v7

    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 307
    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 309
    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_1

    .line 313
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 315
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private regenerateBitmapShadowCache()V
    .locals 9

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 321
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 327
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 328
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 331
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 332
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 333
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 334
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_1

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v0, v8

    int-to-float v1, v1

    mul-float/2addr v1, v8

    .line 335
    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 337
    :cond_1
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 342
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 344
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 345
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 347
    aget v6, v1, v2

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_2

    .line 350
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 352
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v0, v1

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p0, v2

    .line 373
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateShadowAlpha()V
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v0, v2

    .line 363
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 362
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public canAnimate()Z
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return p0
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public clearAnimationCallbacks()V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    .line 257
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    .line 258
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapIconCache()V

    .line 260
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v3, :cond_8

    .line 265
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_7

    .line 266
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    .line 270
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    .line 272
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    .line 273
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 274
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v1, v7

    sub-double/2addr v4, v1

    double-to-float v1, v4

    iget v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v1, v2

    .line 275
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    return-object p0
.end method

.method public getDarkIntensity()F
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return p0
.end method

.method getDrawableBackgroundColor()I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getRotation()F
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return p0
.end method

.method public getTranslationY()F
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return p0
.end method

.method hasOvalBg()Z
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAnimation()V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 180
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    .line 110
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 113
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 122
    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 123
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setShadowProperties(IIII)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v1, p3, :cond_1

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    .line 151
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    .line 152
    iput p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    .line 153
    iput p4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    .line 154
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 157
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setTranslation(FF)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    .line 138
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public updateThemeColor(I)V
    .locals 2

    .line 379
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
