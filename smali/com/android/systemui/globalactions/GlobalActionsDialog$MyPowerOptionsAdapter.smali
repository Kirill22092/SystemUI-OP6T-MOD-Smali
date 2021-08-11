.class public Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPowerOptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$getView$0(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->onClickItem(I)V

    return-void
.end method

.method private synthetic lambda$getView$1(ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->onLongClickItem(I)Z

    move-result p0

    return p0
.end method

.method private onClickItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "GlobalActionsDialog"

    const-string v0, "Action clicked while mDialog is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->onPress()V

    :cond_1
    return-void
.end method

.method private onLongClickItem(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p1

    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "GlobalActionsDialog"

    const-string v0, "Action long-clicked while mDialog is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;->onLongPress()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No power options action found at position: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalActionsDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v1, Lcom/android/systemui/R$layout;->global_actions_power_item:I

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    new-instance p3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$1Eh2DubmssVYkSJim0aUqOlbRwo;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$1Eh2DubmssVYkSJim0aUqOlbRwo;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of p3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    const p1, 0x1020006

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p3, 0x102000b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getMessage()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getMessage()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;->getMessageResId()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object p2
.end method

.method public synthetic lambda$getView$0$GlobalActionsDialog$MyPowerOptionsAdapter(ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->lambda$getView$0(ILandroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getView$1$GlobalActionsDialog$MyPowerOptionsAdapter(ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->lambda$getView$1(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method
