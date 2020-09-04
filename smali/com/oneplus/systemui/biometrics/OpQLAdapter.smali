.class public Lcom/oneplus/systemui/biometrics/OpQLAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OpQLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;,
        Lcom/oneplus/systemui/biometrics/OpQLAdapter$OPQuickPayConfig;,
        Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppIconSize:I

.field private mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppShapeIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mContext:Landroid/content/Context;

.field private final mIconPadding:I

.field private final mIconSize:I

.field private final mShortcutIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppMap:Ljava/util/ArrayList;

    .line 68
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_quick_launch_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mIconSize:I

    .line 71
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_quick_launch_icon_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mIconPadding:I

    .line 75
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_quick_launch_app_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppIconSize:I

    .line 76
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_quick_launch_shortcut_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result p1

    iput p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mShortcutIconSize:I

    .line 77
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 79
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->initShapeIcon()V

    return-void
.end method

.method private initShapeIcon()V
    .locals 7

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppShapeIcon:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    .line 90
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    aput-object v5, v4, v0

    iget-object v5, v2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget v4, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mIconSize:I

    invoke-virtual {v3, v0, v4, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v4, 0x11

    .line 92
    invoke-virtual {v3, v6, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 94
    iget-object v2, v2, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 95
    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mShortcutIconSize:I

    invoke-virtual {v3, v6, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    goto :goto_1

    .line 97
    :cond_0
    iget v2, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppIconSize:I

    invoke-virtual {v3, v6, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    .line 100
    :goto_1
    new-instance v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppShapeIcon:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getIconPadding()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mIconPadding:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->onBindViewHolder(Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ActionInfo;

    .line 131
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 134
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppShapeIcon:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;
    .locals 1

    .line 111
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 112
    sget p1, Lcom/android/systemui/R$drawable;->ic_android:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 114
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const p1, 0x3f2b851f    # 0.67f

    .line 115
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 116
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 117
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mIconSize:I

    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 118
    iget p0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mIconPadding:I

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 119
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 120
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;

    invoke-direct {p0, p2}, Lcom/oneplus/systemui/biometrics/OpQLAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onQLExit()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mContext:Landroid/content/Context;

    .line 147
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppMap:Ljava/util/ArrayList;

    .line 148
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLAdapter;->mAppShapeIcon:Ljava/util/ArrayList;

    return-void
.end method
