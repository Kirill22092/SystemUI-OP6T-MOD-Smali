.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    iput p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    iget p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyPowerOptionsAdapter$6pRTHtt8NeZPwBRYp6m27hpqOuU;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;->lambda$getView$1$GlobalActionsDialog$MyPowerOptionsAdapter(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method
