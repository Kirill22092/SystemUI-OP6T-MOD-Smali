.class Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->hideLockMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    .line 2744
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2747
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
