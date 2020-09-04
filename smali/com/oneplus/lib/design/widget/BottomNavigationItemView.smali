.class public Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private badge:Lcom/oneplus/lib/design/widget/BadgeView;

.field private final defaultMargin:I

.field private icon:Landroid/widget/ImageView;

.field private iconTint:Landroid/content/res/ColorStateList;

.field private isShifting:Z

.field private itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private itemPosition:I

.field private labelVisibilityMode:I

.field private final largeLabel:Landroid/widget/TextView;

.field private scaleDownFactor:F

.field private scaleUpFactor:F

.field private shiftAmount:F

.field private final smallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 53
    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 67
    iput p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/oneplus/commonctrl/R$layout;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    sget p1, Lcom/oneplus/commonctrl/R$drawable;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 87
    sget p1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    .line 89
    sget p1, Lcom/oneplus/commonctrl/R$id;->icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    .line 90
    sget p1, Lcom/oneplus/commonctrl/R$id;->badge:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/design/widget/BadgeView;

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->badge:Lcom/oneplus/lib/design/widget/BadgeView;

    .line 91
    sget p1, Lcom/oneplus/commonctrl/R$id;->smallLabel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    .line 92
    sget p1, Lcom/oneplus/commonctrl/R$id;->largeLabel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->badge:Lcom/oneplus/lib/design/widget/BadgeView;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 96
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 97
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/oneplus/support/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 99
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    return-void
.end method

.method private calculateTextScaleFactors(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 334
    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 335
    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    mul-float/2addr p1, v0

    div-float/2addr p1, p2

    .line 336
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    return-void
.end method

.method private setViewLayoutParams(Landroid/view/View;II)V
    .locals 0

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 242
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 243
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setViewValues(Landroid/view/View;FFI)V
    .locals 0

    .line 248
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 249
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 250
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object p0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 105
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setCheckable(Z)V

    .line 106
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    .line 107
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setEnabled(Z)V

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 111
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 272
    sget-object p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 9

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 174
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    const/4 v1, -0x1

    const/16 v3, 0x11

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/16 v6, 0x31

    const/4 v7, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 225
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 201
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 205
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 176
    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 178
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_1

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v4, v4, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 184
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 187
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->shiftAmount:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleUpFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    goto :goto_2

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->defaultMargin:I

    invoke-direct {p0, v0, v1, v6}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewLayoutParams(Landroid/view/View;II)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->scaleDownFactor:F

    invoke-direct {p0, v0, v1, v1, v7}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8, v8, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setViewValues(Landroid/view/View;FFI)V

    .line 233
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    .line 237
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 255
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Lcom/oneplus/support/core/view/PointerIconCompat;

    move-result-object p1

    .line 261
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Lcom/oneplus/support/core/view/PointerIconCompat;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 264
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Lcom/oneplus/support/core/view/PointerIconCompat;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 288
    :cond_1
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 311
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 312
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 313
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->iconTint:Landroid/content/res/ColorStateList;

    .line 303
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 342
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 346
    invoke-static {p0, p1}, Lcom/oneplus/support/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemPosition:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 138
    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    if-eq v0, p1, :cond_1

    .line 139
    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->labelVisibilityMode:I

    .line 141
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    if-eq v0, p1, :cond_1

    .line 128
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->isShifting:Z

    .line 130
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 323
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 318
    iget-object p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->calculateTextScaleFactors(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 329
    iget-object p0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->itemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
