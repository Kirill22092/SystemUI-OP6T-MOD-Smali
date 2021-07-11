.class public abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$EmergencyAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EmergencyAction"
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V
    .locals 0

    .line 902
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    .line 913
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    .line 916
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->op_control_state_color_error_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 918
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->op_control_text_color_primary_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x102000b

    .line 920
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 921
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    .line 922
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 923
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->op_control_icon_color_active_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x1020006

    .line 925
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 926
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p0
.end method

.method public shouldBeSeparated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
