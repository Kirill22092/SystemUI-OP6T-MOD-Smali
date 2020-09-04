.class Lcom/android/systemui/biometrics/BiometricDialogView$4;
.super Ljava/lang/Object;
.source "BiometricDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogView;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$100(Lcom/android/systemui/biometrics/BiometricDialogView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->access$202(Lcom/android/systemui/biometrics/BiometricDialogView;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->handleResetMessage()V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->showTryAgainButton(Z)V

    .line 346
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogView$4;->this$0:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    return-void
.end method
