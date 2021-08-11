.class public Lcom/android/systemui/bubbles/BubbleOverflow;
.super Ljava/lang/Object;
.source "BubbleOverflow.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleViewProvider;


# instance fields
.field private mBitmapSize:I

.field private mContext:Landroid/content/Context;

.field private mDotColor:I

.field private mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconBitmapSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getBadgedImage()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplayId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mDotColor:I

    return p0
.end method

.method public getDotPath()Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getExpandedView()Lcom/android/systemui/bubbles/BubbleExpandedView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    return-object p0
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "Overflow"

    return-object p0
.end method

.method public logUIEvent(IIFFI)V
    .locals 0

    return-void
.end method

.method public setContentVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setContentVisibility(Z)V

    return-void
.end method

.method setUpOverflow(Landroid/view/ViewGroup;Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleOverflow;->updateDimensions()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->bubble_expanded_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleExpandedView;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setOverflow(Z)V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->setStackView(Lcom/android/systemui/bubbles/BubbleStackView;)V

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p2}, Lcom/android/systemui/bubbles/BubbleExpandedView;->applyThemeAttrs()V

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/bubbles/BubbleOverflow;->updateIcon(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method setVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showDot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method updateDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->bubble_bitmap_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mBitmapSize:I

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->bubble_overflow_icon_bitmap_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mIconBitmapSize:I

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mExpandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->updateDimensions()V

    :cond_0
    return-void
.end method

.method updateIcon(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/systemui/R$layout;->bubble_overflow_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bubbles/BadgedImageView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->bubble_overflow_button_content_description:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010435

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput p2, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mDotColor:I

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/android/systemui/R$color;->bubbles_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/android/systemui/R$color;->bubbles_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    new-instance p1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mBitmapSize:I

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mIconBitmapSize:I

    sub-int/2addr v1, v3

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p2, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/android/systemui/bubbles/BubbleIconFactory;

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/launcher3/icons/BaseIconFactory;->getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p1

    const/high16 p2, 0x42480000    # 50.0f

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleOverflow;->mOverflowBtn:Lcom/android/systemui/bubbles/BadgedImageView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/systemui/bubbles/BubbleViewProvider;)V

    return-void
.end method
