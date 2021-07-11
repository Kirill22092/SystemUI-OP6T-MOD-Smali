.class Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawableState"
.end annotation


# instance fields
.field mAlpha:I

.field mBaseHeight:I

.field mBaseWidth:I

.field mChangingConfigurations:I

.field mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field final mDarkColor:I

.field mDarkIntensity:F

.field mHorizontalFlip:Z

.field mIsHardwareBitmap:Z

.field mLastDrawnIcon:Landroid/graphics/Bitmap;

.field mLastDrawnShadow:Landroid/graphics/Bitmap;

.field final mLightColor:I

.field final mOvalBackgroundColor:Landroid/graphics/Color;

.field mRotateDegrees:F

.field mShadowColor:I

.field mShadowOffsetX:I

.field mShadowOffsetY:I

.field mShadowSize:I

.field final mSupportsAnimation:Z

.field mTranslationX:F

.field mTranslationY:F


# direct methods
.method public constructor <init>(IIZZLandroid/graphics/Color;)V
    .locals 0

    .line 409
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 410
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 411
    iput p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    .line 412
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    const/16 p1, 0xff

    .line 413
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 414
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    .line 415
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    .line 425
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 420
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;)V

    return-object v0
.end method
