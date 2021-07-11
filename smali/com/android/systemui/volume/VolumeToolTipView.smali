.class public Lcom/android/systemui/volume/VolumeToolTipView;
.super Landroid/widget/LinearLayout;
.source "VolumeToolTipView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeToolTipView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeToolTipView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeToolTipView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeToolTipView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawArrow()V
    .locals 5

    .line 82
    sget v0, Lcom/android/systemui/R$id;->arrow_left:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    sget v1, Lcom/android/systemui/R$id;->arrow_right:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeToolTipView;->isLandscape()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 95
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeToolTipView;->isLandscape()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 95
    invoke-static {v3, v1, v4}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 97
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->android_volume_panel_seekbar_color:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 99
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance v3, Landroid/graphics/CornerPathEffect;

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/systemui/R$dimen;->volume_tool_tip_arrow_corner_radius:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-direct {v3, p0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 112
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isLandscape()Z
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeToolTipView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeToolTipView;->drawArrow()V

    return-void
.end method
