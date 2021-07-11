.class Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismiss$9()V
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

    .line 2608
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2610
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->access$4200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    return-void
.end method
