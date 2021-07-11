.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .locals 0

    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    .line 1767
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    const/4 p1, 0x0

    .line 1768
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1769
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1773
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    const/4 p1, 0x0

    .line 1774
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    .line 1775
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1776
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    .line 1816
    sget p2, Lcom/android/systemui/R$layout;->global_actions_grid_item_v2:I

    const/4 v0, 0x0

    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020006

    .line 1819
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const p4, 0x102000b

    .line 1820
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 1821
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1823
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1824
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1826
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 1827
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1829
    :cond_0
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-object p2
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 1810
    :cond_0
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mIconResId:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    .line 1802
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getMessageResId()I
    .locals 0

    .line 1798
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->mMessageResId:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
