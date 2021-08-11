.class public final Lcom/google/android/material/internal/MultiCollapsingHelper;
.super Ljava/lang/Object;
.source "MultiCollapsingHelper.java"


# static fields
.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private collapsedSubtitleColor:Landroid/content/res/ColorStateList;

.field private collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedSubtitleShadowDx:F

.field private collapsedSubtitleShadowDy:F

.field private collapsedSubtitleShadowRadius:F

.field private collapsedSubtitleSize:F

.field private collapsedSubtitleTypeface:Landroid/graphics/Typeface;

.field private collapsedSubtitleX:F

.field private collapsedSubtitleY:F

.field private currentSubtitleSize:F

.field private currentSubtitleTypeface:Landroid/graphics/Typeface;

.field private currentSubtitleX:F

.field private currentSubtitleY:F

.field private expandedSubtitleColor:Landroid/content/res/ColorStateList;

.field private expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

.field private expandedSubtitleShadowDx:F

.field private expandedSubtitleShadowDy:F

.field private expandedSubtitleShadowRadius:F

.field private expandedSubtitleSize:F

.field private expandedSubtitleTexture:Landroid/graphics/Bitmap;

.field private expandedSubtitleTypeface:Landroid/graphics/Typeface;

.field private expandedSubtitleX:F

.field private expandedSubtitleY:F

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private mAppbarMarginBottom:I

.field private mAppbarMarginLeft:I

.field private mAppbarMarginRight:I

.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTitleShadowDx:F

.field private mCollapsedTitleShadowDy:F

.field private mCollapsedTitleShadowRadius:F

.field private mCollapsedTitleTexture:Landroid/graphics/Bitmap;

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTitleSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawBitmap:Landroid/graphics/Bitmap;

.field private mDrawLine:Z

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

.field private mExpandedTitleShadowDx:F

.field private mExpandedTitleShadowDy:F

.field private mExpandedTitleShadowRadius:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewSize:I

.field private mInsetSubtitleImage:Z

.field private mIsDrawLine:Z

.field private mIsRtl:Z

.field private mMenuMargin:I

.field private mPositionInterpolator:Landroid/animation/TimeInterpolator;

.field private mScale:F

.field private mShowDrawLine:Z

.field private mState:[I

.field private mSubTitleView:Landroid/widget/TextView;

.field private mSubtitleAppearance:I

.field private mSyncBottomY:F

.field private mSyncCollapsNull:Z

.field private mSyncLeftX:F

.field private mSyncText:Ljava/lang/CharSequence;

.field private mSyncTextSecondLine:Z

.field private mSyncTextView:Landroid/widget/TextView;

.field private mSyncTopY:F

.field private mTextLayout:Landroid/text/StaticLayout;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextToDrawCollapsed:Ljava/lang/CharSequence;

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleAppearance:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUseTexture:Z

.field private final mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

.field private maxLines:I

.field private subtitle:Ljava/lang/CharSequence;

.field private final subtitlePaint:Landroid/text/TextPaint;

.field private subtitleScale:F

.field private subtitleTexturePaint:Landroid/graphics/Paint;

.field private subtitleToDraw:Ljava/lang/CharSequence;

.field private syncColorList:Landroid/content/res/ColorStateList;

.field private final syncTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mShowDrawLine:Z

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->oneplus_accent_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    iget-boolean v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    const-string v10, "net.oneplus.weather"

    const/4 v11, 0x1

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move v9, v11

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    invoke-static {v8, v9}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->descent()F

    move-result v12

    iget-object v13, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v3, :cond_4

    invoke-direct {v0, v8, v9}, Lcom/google/android/material/internal/MultiCollapsingHelper;->resizeTitleOnlyCollapsedY(IF)V

    goto/16 :goto_5

    :cond_4
    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v12, v9

    sub-float/2addr v14, v12

    const/high16 v12, 0x40400000    # 3.0f

    div-float/2addr v14, v12

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget-object v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    const v15, 0x400ccccd    # 2.2f

    add-float/2addr v5, v15

    cmpl-float v5, v14, v5

    if-lez v5, :cond_5

    move v5, v14

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/google/android/material/R$dimen;->op_app_bar_margin_top:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    :goto_4
    add-float/2addr v12, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v12, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v12, v5

    iput v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v14, v13

    add-float/2addr v5, v14

    add-float/2addr v5, v9

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->ascent()F

    move-result v12

    sub-float/2addr v5, v12

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, Lcom/google/android/material/R$dimen;->op_app_bar_collapsed_top_subtitle_margin:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v5, v12

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleY:F

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    const/16 v12, 0x64

    if-ge v5, v12, :cond_6

    iget v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v12}, Landroid/text/TextPaint;->ascent()F

    move-result v12

    const/high16 v14, 0x40800000    # 4.0f

    div-float/2addr v12, v14

    add-float/2addr v5, v12

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    :cond_6
    iget-boolean v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    if-eqz v5, :cond_7

    invoke-direct {v0, v8, v9}, Lcom/google/android/material/internal/MultiCollapsingHelper;->resizeTitleOnlyCollapsedY(IF)V

    :cond_7
    :goto_5
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/google/android/material/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v9, 0x800007

    and-int/2addr v8, v9

    const/4 v12, 0x5

    if-eq v8, v11, :cond_b

    if-eq v8, v12, :cond_9

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iput v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_6

    :cond_8
    move v7, v6

    :goto_6
    add-int/2addr v4, v7

    int-to-float v4, v4

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    goto :goto_9

    :cond_9
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v14, v8

    sub-float/2addr v14, v4

    iput v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    int-to-float v4, v8

    sub-float/2addr v4, v7

    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_a

    move v7, v5

    goto :goto_7

    :cond_a
    move v7, v6

    :goto_7
    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    goto :goto_9

    :cond_b
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v13

    sub-float/2addr v8, v4

    iput v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v13

    sub-float/2addr v4, v7

    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_c

    move v7, v5

    goto :goto_8

    :cond_c
    move v7, v6

    :goto_8
    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    :goto_9
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_e

    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v8, v7, v6, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    :goto_b
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_f

    invoke-virtual {v8, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    :cond_f
    iget v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    iget-boolean v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    if-eqz v14, :cond_10

    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    move v10, v11

    goto :goto_c

    :cond_10
    move v10, v6

    :goto_c
    invoke-static {v8, v10}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move/from16 v16, v10

    goto :goto_d

    :cond_11
    const/16 v16, 0x0

    :goto_d
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v14}, Landroid/text/TextPaint;->ascent()F

    move-result v14

    sub-float/2addr v10, v14

    div-float v14, v16, v13

    iget-object v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v15

    sub-float v15, v14, v15

    const/16 v6, 0x50

    const/16 v13, 0x30

    if-eqz v3, :cond_14

    and-int/lit8 v3, v8, 0x70

    if-eq v3, v13, :cond_13

    if-eq v3, v6, :cond_12

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v14

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_e

    :cond_12
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float v3, v3, v16

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_e

    :cond_13
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_e

    :cond_14
    and-int/lit8 v3, v8, 0x70

    if-eq v3, v13, :cond_16

    if-eq v3, v6, :cond_15

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v14

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    add-float/2addr v3, v10

    add-float/2addr v3, v15

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    goto :goto_e

    :cond_15
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v3

    sub-float/2addr v6, v10

    sub-float v6, v6, v16

    iput v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    int-to-float v3, v3

    sub-float v3, v3, v16

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    goto :goto_e

    :cond_16
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    add-float/2addr v3, v10

    add-float v3, v3, v16

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    :goto_e
    and-int v3, v8, v9

    if-eq v3, v11, :cond_1a

    if-eq v3, v12, :cond_18

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_17

    move v6, v5

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    :goto_f
    add-int/2addr v3, v6

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    goto :goto_12

    :cond_18
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    sub-float/2addr v6, v4

    iput v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_19

    move v6, v5

    goto :goto_10

    :cond_19
    const/4 v6, 0x0

    :goto_10
    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    goto :goto_12

    :cond_1a
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_1b

    move v6, v5

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    :goto_11
    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    invoke-direct {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedTextSize(F)V

    invoke-direct {v0, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedSubtitleSize(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private calculateOffsets(F)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->interpolateBounds(F)V

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawX:F

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawY:F

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleY:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedTextSize(F)V

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedSubtitleSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    sget-object v2, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextBlend(F)V

    sget-object v1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextBlend(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowRadius:F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDx:F

    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDy:F

    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v6

    invoke-static {v5, v6, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedSubtitleColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentSyncTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowRadius:F

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDx:F

    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDy:F

    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingSubtitleSize(F)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    iput-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    move v1, v3

    goto :goto_3

    :cond_1
    move v1, v5

    goto :goto_3

    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    iput-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    :cond_6
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    iput-boolean v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, v5

    :goto_4
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    if-lez v2, :cond_a

    goto :goto_6

    :cond_a
    move v2, v5

    :goto_6
    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v2, :cond_b

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    :cond_b
    int-to-float v2, v5

    sub-float/2addr v0, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    :cond_c
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iput v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    move v6, v1

    move v1, v0

    move v0, v5

    goto :goto_3

    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v6, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    div-float/2addr p1, v3

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    :goto_2
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    div-float/2addr p1, v3

    mul-float/2addr p1, v1

    cmpl-float p1, p1, v0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    move v0, p1

    move p1, v2

    :goto_3
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_7

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    cmpl-float v7, v7, p1

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    if-nez v7, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v5

    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    iput-boolean v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    if-eqz v6, :cond_15

    :cond_8
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result p1

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    if-ne v8, v5, :cond_9

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x10

    int-to-float v8, v8

    goto :goto_6

    :cond_9
    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x41800000    # 16.0f

    add-float/2addr v8, v9

    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "net.oneplus.weather"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 p1, 0x4

    goto :goto_7

    :cond_a
    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr p1, v8

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_7
    int-to-float p1, p1

    add-float/2addr p1, v6

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextSecondLine:Z

    if-eqz v7, :cond_c

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float/2addr v2, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v7

    add-float/2addr v2, v7

    :cond_c
    add-float/2addr v6, v2

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_d
    const-string p1, ""

    if-lez v3, :cond_11

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_11

    new-instance v2, Landroid/text/StaticLayout;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v9, v1

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v11, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    iget v12, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-le v6, v0, :cond_10

    sub-int/2addr v0, v5

    if-lez v0, :cond_e

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v7

    invoke-interface {v6, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_8

    :cond_e
    move-object v6, p1

    :goto_8
    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-interface {v7, v8, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v7, 0x20

    if-ne v2, v7, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v0, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-interface {v0, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_9

    :cond_f
    move-object v2, p1

    :goto_9
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v0, v7, v4

    const-string v0, "\u2026"

    aput-object v0, v7, v5

    const/4 v0, 0x2

    aput-object v2, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v7, v1, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v6, v0, v4

    aput-object v2, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    :goto_a
    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    :cond_11
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    const v2, 0x800007

    and-int/2addr v0, v2

    if-eq v0, v5, :cond_13

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    const v2, 0x800005

    if-eq v0, v2, :cond_12

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    :cond_12
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b

    :cond_13
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_b
    move-object v8, v0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-nez v0, :cond_14

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    :cond_14
    if-lez v3, :cond_15

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v7, v1

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    iget v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    :cond_15
    :goto_c
    return-void
.end method

.method private clearTexture()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private ensureCollapsedTexture()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v6, v0, v6

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureCrossSectionTexture()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v9, v0, v1

    iget-object v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_4
    :goto_1
    return-void
.end method

.method private ensureExpandedSubtitleTexture()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentExpandedSubtitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private getCurrentSyncTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private interpolateBounds(F)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 3

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resizeTitleOnlyCollapsedY(IF)V
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    add-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    :goto_0
    return-void
.end method

.method private setCollapsedTextBlend(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setExpandedTextBlend(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setInterpolatedSubtitleSize(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    sget-boolean p1, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureExpandedSubtitleTexture()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    sget-boolean p1, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureExpandedTexture()V

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureCollapsedTexture()V

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureCrossSectionTexture()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private updateTitlePosition()Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const-string v5, "net.oneplus.weather"

    const/4 v6, 0x2

    if-gt v3, v1, :cond_1

    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const v7, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    mul-int/2addr v5, v6

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    mul-int/2addr v5, v6

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v5

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    mul-int/2addr v7, v6

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    :goto_2
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_3
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    sub-float v6, v5, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$dimen;->op_control_margin_space1:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    :goto_4
    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_b
    :goto_5
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_1c

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v5, :cond_1c

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget-boolean v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v6, v6, 0x10

    goto :goto_6

    :cond_d
    move v6, v2

    :goto_6
    sub-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_8

    :cond_e
    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-boolean v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v6, :cond_f

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v6, v6, 0x10

    goto :goto_7

    :cond_f
    move v6, v2

    :goto_7
    int-to-float v6, v6

    add-float/2addr v5, v6

    :goto_8
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1c

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_10
    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v5, v6, v2, v7, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v6}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-ne v6, v1, :cond_11

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    goto :goto_9

    :cond_11
    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    :goto_9
    iget-boolean v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_12

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v7, v7, 0x10

    goto :goto_a

    :cond_12
    move v7, v2

    :goto_a
    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x41c00000    # 24.0f

    add-float/2addr v6, v7

    const/high16 v7, 0x42400000    # 48.0f

    if-eqz v0, :cond_14

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v5

    sub-float/2addr v8, v7

    iget-boolean v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v9, :cond_13

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v9, v9, 0x10

    goto :goto_b

    :cond_13
    move v9, v2

    :goto_b
    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_c

    :cond_14
    move v8, v6

    :goto_c
    iput v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v9

    add-float/2addr v10, v8

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x43a50000    # 330.0f

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v8, v9

    sub-float/2addr v10, v8

    iput v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v10, v8

    iput v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    add-float v8, v6, v5

    iget-object v9, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_18

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iput-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextSecondLine:Z

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    neg-float v0, v6

    sub-float/2addr v0, v7

    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v3, :cond_16

    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 p0, p0, 0x10

    goto :goto_d

    :cond_16
    move p0, v2

    :goto_d
    int-to-float p0, p0

    sub-float/2addr v0, p0

    goto :goto_e

    :cond_17
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_11

    :cond_18
    if-eqz v0, :cond_19

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_f

    :cond_19
    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    :goto_f
    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    iput-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextSecondLine:Z

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float p0, p0

    goto :goto_10

    :cond_1b
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    :goto_10
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTranslationX(F)V

    :cond_1c
    :goto_11
    return v2
.end method


# virtual methods
.method public calculateCurrentOffsets()V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawTitle:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    mul-float/2addr v4, v5

    :goto_1
    if-eqz v3, :cond_2

    add-float/2addr v2, v4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->drawLine(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateTitlePosition()Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mShowDrawLine:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->op_control_divider_height_standard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$color;->op_control_divider_color_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginRight:I

    sub-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsDrawLine:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsDrawLine:Z

    :goto_0
    return-void
.end method

.method public getCurrentCollapsedSubtitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public getCurrentExpandedTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getExpandedSubtitleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpansionFraction()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    return p0
.end method

.method public getIsDrawLineInit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsDrawLine:Z

    return p0
.end method

.method public getSyncColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleViewCollapsedTextSize()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    return p0
.end method

.method public isExistSyncCloud()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method final isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBoundsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawTitle:Z

    return-void
.end method

.method public recalculate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateBaseOffsets()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateCurrentOffsets()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateImageViewPosition()V

    :cond_0
    return-void
.end method

.method public setAppbarMargin(IIII)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    iput p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginRight:I

    iput p4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    iget-object p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    sub-int p4, p3, p1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr p4, v0

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.oneplus.weather"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p4, v0

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    sub-int/2addr p3, p1

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->onBoundsChanged()V

    :cond_3
    return-void
.end method

.method public setCollapsedSubtitleAppearance(I)V
    .locals 3

    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDx:F

    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDy:F

    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowRadius:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleAppearance(I)V
    .locals 3

    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDx:F

    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDy:F

    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowRadius:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method public setExpandedSubtitleAppearance(I)V
    .locals 3

    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubtitleAppearance:I

    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDx:F

    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDy:F

    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowRadius:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTitleAppearance(I)V
    .locals 3

    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleAppearance:I

    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDx:F

    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDy:F

    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowRadius:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setExpandedTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setInsetImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    return-void
.end method

.method public setMenuMargin(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubtitleAppearance:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v1, v0, 0x10

    :cond_1
    sub-int/2addr p1, v1

    int-to-float p1, p1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageViewSize:I

    add-int/lit8 v1, v0, 0x10

    :cond_3
    int-to-float v0, v1

    add-float/2addr p1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncCollapsNull:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    return-void

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateTitlePosition()Z

    :cond_7
    return-void
.end method

.method public setSyncTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setSyncTextView(Landroid/widget/TextView;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSubtitleAppearance:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->updateTitlePosition()Z

    :cond_2
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitleAppearance:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public updateImageViewPosition()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_1
    return-void
.end method
